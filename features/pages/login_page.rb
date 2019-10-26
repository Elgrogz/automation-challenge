require 'selenium-webdriver'

class LoginPage

  def initialize(browser)
    @browser = browser
  end

  def goToLoginPage()
    @browser.navigate.to("https://login.sandbox.freeagent.com")
  end

end