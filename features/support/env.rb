require 'selenium-webdriver'
require 'cucumber'

# Ensure you're pointing to the correct driver for your OS and browser
# Default is set for Chrome Webdriver on MacOS (add '.exe' file extension for Windows)
driver_path = File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'drivers', 'chromedriver'))

# Remember to change :chrome to :firefox if using Firefox Geckodriver
browser = Selenium::WebDriver.for :chrome, driver_path: driver_path

Before do |_scenario|
  @browser = browser
  browser.manage.timeouts.implicit_wait = 3
end

at_exit do
  browser.quit
end
