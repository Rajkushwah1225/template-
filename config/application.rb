# config/application.rb
require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module EmployeeCrud
  class Application < Rails::Application
    # Configuration for the application, engines, and railties goes here.
    config.load_defaults 7.1  # Make sure this is not commented out
    # Remove or comment out the invalid line below
    # config.autoload_lib = { ignore: true } 
  end
end
