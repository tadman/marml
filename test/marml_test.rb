require 'test/unit'
require File.dirname(__FILE__) + '/../init.rb'

class MarmlTest < Test::Unit::TestCase
  def setup
    @parser = Marml::Parser.new
  end
  
  def test_empty_template
    assert_parses_empty ''
  end

  def test_spaces_template
    assert_parses_empty ' '
    assert_parses_empty '  '
    assert_parses_empty '   '
  end
  
  def test_doctype
    assert_can_parse '!!! http://example.com/doctype'
  end

  def test_comment
    # Comments can be indented
    assert_can_parse '; Valid comment'
    assert_can_parse ';Valid comment'

    # Invalid indendation is not supported
    assert_cannot_parse ' ; Invalid comment'
  end
  
  def test_ruby_code
    assert_can_parse '-  :ruby_code'
    assert_can_parse '- :ruby_code'
    assert_can_parse '-:ruby_code'
  end
  
  def test_several_lines
    assert_can_parse "- :ruby_line1\n-  :ruby_line2\n-  :ruby_line3"
  end

  def test_basic_tag
    assert_can_parse "%tag_name"
  end

  def test_div_class_tag
    assert_can_parse ".class_name"
  end
  
  def test_basic_tag_custom_id
    assert_can_parse '%tag_name[@model:type]'
  end

  def test_div_id_tag
    assert_can_parse "#id_name"
  end
  
protected
  def assert_can_parse(string, message = nil)
    assert_equal :success, @parser.parse(string), message
  end

  def assert_cannot_parse(string, message = nil)
    assert_equal :error, @parser.parse(string), message
  end

  def assert_parses_empty(string, message = nil)
    assert_equal :empty, @parser.parse(string), message
  end
end
