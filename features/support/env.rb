require 'capybara/cucumber'
require 'selenium-webdriver'


Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :chrome
Capybara.default_selector = :css

Before do
  visit "https://www.r-acad.com/"
end