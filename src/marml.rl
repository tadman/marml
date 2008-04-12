%%{
  machine marml;
  
  whitespace = [ \t]*;
  eol = '\n';
  
  indent = '  ';
  indents = indent*;
  
  action indent_start { }
  action indent_okay { true }
  
  indentation = ( indent+ >indent_start when indent_okay );
  blank_line = whitespace*;
  line_remainder = ^eol+;
  
  action capture_to_eof { capture(@block_type, tokstart, eof); }
  action capture_token { capture(@block_type, tokstart, tokend); }
  action capture_token_return { capture(@block_type, tokstart, tokend); ilevel.pop; fret; }
  action return { ilevel.pop; fret; }
  
  action token_start { tokstart = p }
  action token_end { tokend = p }
  action token_eof { tokend = eof }
  
  action grab_line { fcall line; }
  line := |*
    eol @return;
    
    line_remainder %eof(capture_to_eof) => capture_token_return;
  *|;

  action grab_block { stack_up; fcall line; }
  block := |*
    ( eol . indentation ) when indent_okay;
  
    line_remainder %eof(capture_to_eof) => capture_token_return;
  *|;
  
  css_identifier = [a-zA-Z:\-_0-9]+;
  
  class_name = '.' . css_identifier;
  id_name = '#' . css_identifier;
  
  optional_space = ' '*;
  
  ruby_var_name = [a-zA-Z_][a-zA-Z_0-9]*;
  any_ruby_var_name = '@'? . [a-zA-Z_][a-zA-Z_0-9]*;
  ruby_instance_var_name = '@' . ruby_var_name;

  explicit_defn = (
    start: (
      '[' . optional_space -> var_name
    ),
    
    var_name: (
      any_ruby_var_name -> optional_var_name
    ),
    
    optional_var_name: (
      ':' . ruby_var_name -> finish
    )
    
    finish: (
      optional_space . ']' -> final
    )
  );
  
  implicit_defn = ruby_instance_var_name . ( ':' . ruby_var_name )?;

  class_via_var = '.' . ( explicit_defn | implicit_defn );
  id_via_var = '@' . ( explicit_defn | implicit_defn );
  
  action push_capture { @current_block << data[tokstart, tokend] }

  tag := |*
    css_identifier => push_capture;
  *|;

  div_tag := |*
    class_name => push_capture;
    id_name => push_capture;
  *|;
  
  action newline { remark(:newline); @block_type = nil }
  action indentation { }
  
  action flag_doctype { flag_as_type(:doctype); }
  action flag_comment { flag_as_type(:comment); }
  action flag_html_comment { flag_as_type(:html_comment); }
  action flag_pragma { flag_as_type(:pragma); }
  action flag_inline { flag_as_type(:inline); }
  action flag_inject { flag_as_type(:inject); }
  action flag_text { flag_as_type(:text); }
  
  action parse_tag { flag_as_type(:tag); call tag;  }
  action parse_div_tag { flag_as_type(:tag); call div_tag; }
  
  action backup { p -= 1 }
  
  main := |*
    eol => newline;

    ( '!!!' . whitespace @flag_doctype ) => grab_line;
    ( '-' . whitespace @flag_inline ) => grab_line;

    ( ';' . whitespace @flag_comment ) => grab_block;
    ( '!--' . whitespace @flag_html_comment ) => grab_block;
    ( '!' . whitespace @flag_pragma ) => grab_block;
    ( '=' . whitespace @flag_inject ) => grab_block;

    ( '%' ) => parse_tag;
    ( '#' @backup ) => parse_div_tag;
    ( '.' @backup ) => parse_div_tag;
    
    line_remainder @flag_text => capture_token;
  *|;
}%%

module Marml
  class Parser
    class Engine
      def initialize
        %% write data;
      end

      def parse(data)
        @data = data
        return [ :empty ] if (!@data or @data.empty? or !@data.match(/\S/))

        result = :empty
        @current_block = Block.new
        @result_blocks = Template.new
        @result_blocks << @current_block
        @block_stack = [ @current_block ]

        stack = [ ]
        @ilevel = ilevel = [ 0 ]

        %% write init;
        
        eof = pe
        
        %% write exec;
        %% write eof;

        result = :error unless (cs >= marml_first_final)
    
        @result_blocks
      end
    end
  end
end
