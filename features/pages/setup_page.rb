require 'selenium-webdriver'

class SetupPage

  def initialize(browser)
      puts "initialising setup page"
    @browser = browser
  end

  def setupPageIsDisplayed()   
    puts "waiting for company type dropdown..."
    wait = Selenium::WebDriver::Wait.new(timeout: 10)
    wait.until { @browser.find_element(id: "company_type").displayed? }

    puts "verifying setup page has loaded and is displayed..."
    companyTypeDropdown = @browser.find_element(id: "company_type")
    return companyTypeDropdown.displayed?
  end

  def selectBusinessTypeOption(businessType)   
    puts "waiting for company type dropdown..."
    wait = Selenium::WebDriver::Wait.new(timeout: 3)
    wait.until { @browser.find_element(id: "company_type").displayed? }

    puts "selecting business type from dropdown..."
    companyTypeDropdown = @browser.find_element(id: "company_type")
    option = Selenium::WebDriver::Support::Select.new(companyTypeDropdown)
    option.select_by(:text, businessType)
  end

  def stateDropdownIsDisplayed()   
    puts "verifying business type from dropdown..."
    stateDropdown = @browser.find_element(xpath: "//option[@value='Alabama']")
    return stateDropdown.displayed?
  end

end