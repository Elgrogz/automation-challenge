Given /^I navigate to the login page$/ do
    @loginPage = LoginPage.new(@browser)
    @loginPage.goToLoginPage()
end

When /^I login with an invalid credential combination$/ do
    @loginPage.enterEmail("wronguser@email.com")
    @loginPage.enterEmail("wrongpassword123")
    sleep 3
end

Then /^I should see the invalid credentials login error message$/ do
 
end