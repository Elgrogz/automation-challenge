require 'selenium-webdriver'

class LoginPage

  def initialize(browser)
    puts "initialising login page..."
    @browser = browser
  end

  def goToLoginPage()
    puts "navigating to login page..."
    @browser.navigate.to("https://login.sandbox.freeagent.com")
  end

  def enterEmail(email)   
    puts "entering email..."
    emailTextbox = @browser.find_element(id: "login_email")
    emailTextbox.send_keys(email)
  end

  def enterPassword(password)   
    puts "entering password..."
    passwordTextBox = @browser.find_element(id: "login_password")
    passwordTextBox.send_keys(password)
  end

  def clickLogin()   
    puts "attempting to login..."
    loginButton = @browser.find_element(name: "commit")
    loginButton.click()
  end

  def loginErrorMessageIsShown() 
    puts "verifying login error..."  
    errorMessage = @browser.find_element(class: "flash")
    return errorMessage.displayed?
  end

end