Given /^I navigate to the login page$/ do
    loginPage = LoginPage.new(@browser)
    loginPage.goToLoginPage()
  sleep 3
end

When /^I login with an invalid credential combination$/ do
 
end

Then /^I should see the invalid credentials login error message$/ do
 
end