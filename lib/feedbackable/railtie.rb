require 'rails'

module Feedbackable
  class Railtie < ::Rails::Railtie
    config.feedbackable = ActiveSupport::OrderedOptions.new

    initializer "feedbackable.configure" do |app|
      Feedbackable.configure do |config|
        config.admin_email = app.config.feedbackable[:admin_email] || 'admin@example.com'
      end

    end
  end
end