ENV["RAILS_ENV"] ||= 'test'

require File.expand_path('../../config/environment', __FILE__)
require 'rspec/rails'

# Use minimum hashing for Bcrypt in tests to speed them up.
# This did not really help, is it already done automatically
#require "bcrypt"
#BCrypt::Engine::DEFAULT_COST = 1

Dir[Rails.root.join('spec/support/**/*.rb')].each { |f| require f }

require 'capybara/email/rspec'

Capybara::FailShow.activate

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!
  config.use_transactional_fixtures = false
  config.run_all_when_everything_filtered = true
  config.filter_run :focus
  config.order = 'random'
  #Force expect syntax instead of should
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end

  config.before(:suite) do
    DatabaseCleaner.clean_with :truncation
  end

  config.before(:each) do
    DatabaseCleaner.strategy = :transaction
  end

  config.before(:each, js: true) do
    DatabaseCleaner.strategy = :truncation
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end

end
