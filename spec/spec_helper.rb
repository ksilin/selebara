require 'rubygems'
require 'bundler/setup'
require 'rspec'
require 'capybara/rspec'

RSpec.configure do |config|
  config.include Capybara::DSL
end

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

