module Marml
  class Template
    LINE_OFFSET = 1
    
    include ActionView::TemplateHandlers::Compilable

    def self.line_offset
      LINE_OFFSET
    end

    def line_offset
      LINE_OFFSET
    end

    def initialize(for_view)
      @view = for_view
    end

    def compilable?
      true
    end

    def compile(template_src)
      Proc.new {
        template_src
      }
    end
  end
end
