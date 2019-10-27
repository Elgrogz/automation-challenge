
Given /^I navigate to the login page$/ do
    @loginPage.goToLoginPage()
end

When /^I login with an invalid credential combination$/ do
    @loginPage.enterEmail("wronguser@email.com")
    @loginPage.enterPassword("wrongpassword123")
    @loginPage.clickLogin()
end

When /^I login with a valid credential combination for a new user$/ do
    @loginPage.enterEmail("ggtest@email.com")
    @loginPage.enterPassword("ggtest1231")
    @loginPage.clickLogin()
end

Then /^I should see the invalid credentials login error message$/ do
    expect(@loginPage.loginErrorMessageIsShown()).to be true
end