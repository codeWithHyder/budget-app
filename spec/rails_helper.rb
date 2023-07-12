# This file is copied to spec/ when you run 'rails generate rspec:install'
require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
# Prevent database truncation if the environment is production
abort('The Rails environment is running in production mode!') if Rails.env.production?
require 'rspec/rails'
# Add additional requires below this line. Rails is not loaded until this point!

# Add the following lines to include shoulda-matchers and factory_bot
require 'shoulda/matchers'
require 'factory_bot_rails'
# Add this line at the top of the file
# require 'shoulda/matchers'
Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end

Dir[Rails.root.join('spec', 'support', '**', '*.rb')].each { |f| require f }

# ...

RSpec.configure do |config|
  # ...

  # Include shoulda-matchers and factory_bot syntax methods
  config.include FactoryBot::Syntax::Methods
  config.include(Shoulda::Matchers::ActiveRecord, type: :model)

  # ...
end
