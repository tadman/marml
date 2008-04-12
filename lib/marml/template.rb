module Marml
  class Template
    include ActionView::TemplateHandlers::Compilable

    def self.line_offset
      1
    end

    def line_offset
      self.class.line_offset
    end

    def initialize(for_view)
      @view = for_view
    end

    def compilable?
      true
    end

    def compile(template)
      Proc.new {
        template
      }
    end
  end
end
