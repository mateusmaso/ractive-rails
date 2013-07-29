require 'tilt'
module Ractive
  module Rails
    class Tilt < Tilt::Template
      def self.default_mime_type
        'application/javascript'
      end

      def prepare

      end

      def evaluate(scope, locals, &block)
        <<-TEMPLATE
          this.RactiveTemplates || (this.RactiveTemplates = {});
          this.RactiveTemplates['#{scope.logical_path}'] = #{Ractive.parse(data).to_json};
        TEMPLATE
      end
    end
  end
end
