require 'marml/template'

module Marml
  class RailsHook
    def self.install
      ActionView::Template.register_template_handler(:marml, Marml::Template)
    end
  end
end
