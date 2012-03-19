require "feedbackable/version"
require "feedbackable/railtie"
require "feedbackable/engine"
require "feedbackable/active_record_extension"

module Feedbackable

	  def self.configure(&block)
    	yield @config ||= Feedbackable::Configuration.new
  	end

  	def self.config
    	@config
    end

    class Configuration #:nodoc:
	    include ActiveSupport::Configurable
      config_accessor :admin_email
	    def param_name
	      config.param_name.respond_to?(:call) ? config.param_name.call() : config.param_name
	    end
	  end
	  
  	ActiveRecord::Base.extend(Feedbackable::ActiveRecordExtension)

end
