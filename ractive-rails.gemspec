$:.push File.expand_path("../lib", __FILE__)
require 'ractive/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "ractive-rails"
  spec.version       = Ractive::Rails::VERSION
  spec.authors       = ["mateusmaso"]
  spec.email         = ["m.maso25@gmail.com"]
  spec.description   = %q{Ractive template adapter for the Rails asset pipeline.}
  spec.summary       = %q{Ractive template adapter for the Rails asset pipeline.}
  spec.homepage      = "https://github.com/mateusmaso/ractive-rails"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "tilt", ">= 1.3"
  spec.add_dependency 'execjs', ">= 1.3"
  spec.add_dependency "sprockets", ">= 2.0"
end
