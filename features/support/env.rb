require "selenium-webdriver"
require "capybara"
require 'capybara/cucumber'
require "rspec"
require 'site_prism'



Capybara.register_driver :insecure_selenium do |app|
  
  Capybara::Selenium::Driver.new(
    app,
    browser: :firefox,
    desired_capabilities: { accept_insecure_certs: true }
  )
  
end

Capybara.configure do |config|

  config.run_server = false
  config.default_driver = :insecure_selenium

  config.app_host = 'http://10.2.108.12:8081/login?from=%2F'
end

Capybara.default_max_wait_time = 20