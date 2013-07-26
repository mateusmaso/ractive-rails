module Ractive
  module Rails
    class Ractive
      class << self
        def parse(source, options={})
          context.eval("Ractive.parse(#{source.inspect})")
        end

        private

        def context
          @context ||= ExecJS.compile(source)
        end

        def source
          @source ||= path.read
        end

        def path
          @path ||= assets_path.join('javascripts', 'ractive.js')
        end

        def assets_path
          @assets_path ||= Pathname(__FILE__).dirname.join('..', '..', '..', 'vendor', 'assets')
        end
      end
    end
  end
end