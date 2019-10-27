require 'selenium-webdriver'
require 'cucumber'

# Ensure you're pointing to the correct driver for your OS and browser
# Default is set for Chrome Webdriver on MacOS (add '.exe' file extension for Windows)
driver_path = File.expand_path(File.join(File.dirname(__FILE__), '..', '..', 'drivers', 'chromedriver'))

# Remember to change :chrome to :firefox if using Firefox Geckodriver
browser = Selenium::WebDriver.for :chrome, driver_path: driver_path

Before do |_scenario|
  puts "initializing browser and pages..."
  @browser = browser
  @loginPage = LoginPage.new(@browser)
  @setupPage = SetupPage.new(@browser)

  puts "setting browser timeout to 3 seconds..."
  browser.manage.timeouts.implicit_wait = 3
end

at_exit do
  puts "tearing down browser..."
  browser.quit
end
