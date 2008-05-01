module Marml
  class TemplateHandler < ActionView::TemplateHandler
    include ActionView::TemplateHandlers::Compilable

    def compilable?
      false
    end

    def render(template)
      "Marml::TemplateHandler#render\n#{template.source}\n#{template.object_id}"
    end

    def compile_template(template)
      puts ">> Marml::TemplateHandler#compile(#{template.object_id})"

      Proc.new {
        template.source
      }
    end
  end
end
