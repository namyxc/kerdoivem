require "bundler/setup"
 
require 'capybara/mechanize'
require 'capybara/cucumber'
 
Capybara.app = "http://husrv011/"
Capybara.run_server = false
Capybara.app_host = 'http://husrv011/'
Capybara.default_selector = :css
#Capybara.default_driver = :mechanize
Capybara.default_driver = :selenium