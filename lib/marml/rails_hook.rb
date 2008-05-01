require 'marml/template'
require 'marml/template_handler'

module Marml
  module RailsHook
    def self.install
      ActionView::Template.register_template_handler(:marml, Marml::TemplateHandler)
    end
  end
end
