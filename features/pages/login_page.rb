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

  def enterPassword(password)   
    wait = Selenium::WebDriver::Wait.new(timeout: 10)
    wait.until { @browser.find_element(id: "login_password") }
    passwordTextBox = @browser.find_element(id: "login_password")
    passwordTextBox.send_keys(password)
  end

  def clickLogin()   
    wait = Selenium::WebDriver::Wait.new(timeout: 10)
    wait.until { @browser.find_element(name: "commit") }
    loginButton = @browser.find_element(name: "commit")
    loginButton.click()
  end

  def LoginErrorMessageIsShown()   
    wait = Selenium::WebDriver::Wait.new(timeout: 10)
    wait.until { @browser.find_element(class: "flash") }
    errorMessage = @browser.find_element(class: "flash")
    return errorMessage.displayed?
  end

end