require 'selenium-webdriver'

class LoginPage

  def initialize(browser)
    @browser = browser
  end

  def goToLoginPage()
    @browser.navigate.to("https://login.sandbox.freeagent.com")
  end

  def enterEmail(email)   
    wait = Selenium::WebDriver::Wait.new(timeout: 10)
    wait.until { @browser.find_element(id: "login_email") }
    emailTextbox = @browser.find_element(id: "login_email")
    emailTextbox.send_keys(email)
  end

    def enterEmail(password)   
    wait = Selenium::WebDriver::Wait.new(timeout: 10)
    wait.until { @browser.find_element(id: "login_password") }
    emailTextbox = @browser.find_element(id: "login_password")
    emailTextbox.send_keys(password)
  end

end