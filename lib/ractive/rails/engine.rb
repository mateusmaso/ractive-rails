module Ractive
  module Rails
	  class Engine < ::Rails::Engine
	  	config.before_initialize do |app|
	  		Sprockets::Engines
	  		Sprockets.register_engine('.rac', Tilt)
	  		Sprockets.register_engine('.ractive', Tilt)
	  	end
	  end
	end
end