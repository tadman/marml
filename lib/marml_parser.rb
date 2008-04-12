module Marml
  class ParseError < Exception
  end
  
  class Template < Array
    def initialize(*content)
      self.concat(content)
    end
  end
  
  class Block < Array
    def initialize(*content)
      self.concat(content)
    end
  end

  class Code < Array
    def initialize(*content)
      self.concat(content)
    end
  end
  
  class Text < Array
    def initialize(*content)
      self.concat(content)
    end
  end
  
  class Parser
    def initialize(data = nil)
      parse(data) if (data)
    end
    
    def parse(data)
      @parser ||= Parser::Engine.new
      
      @parsed = @parser.parse(data)
    end
    
    class Engine
      def remark(comment, *options)
        puts "<#{comment}>"
      end
      
      def capture(mode, start_offset, end_offset)
        captured_block = Block.new(mode)
        captured_block << @data[start_offset, end_offset - 1]
        
        @current_block << captured_block
      end
      
      def flag_as_type(type)
        remark(type)
        @block_type = type
      end
      
      def stack_up(block_type = :block)
        new_block = Block.new(block_type)
        @current_block << new_block
        @current_block = new_block
        @block_stack << @current_block
      end

      def stack_down(*data)
        @block_stack.pop
        @current_block = @block_stack.last
      end
    end
  end
end
