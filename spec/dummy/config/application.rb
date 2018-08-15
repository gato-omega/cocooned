# frozen_string_literal: true

require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
# require "active_storage/engine"
require 'action_controller/railtie'
# require "action_mailer/railtie"
require 'action_view/railtie'
# require "action_cable/engine"
require 'sprockets/railtie'
require 'rails/test_unit/railtie'

Bundler.require(*Rails.groups)
require 'cocoon'

module Dummy
  class Application < Rails::Application
    if config.respond_to?(:load_defaults) # Require Rails 5.0+
      # Initialize configuration defaults for originally generated Rails version.
      config.load_defaults 5.2
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end
