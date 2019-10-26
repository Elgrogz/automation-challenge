Given /^I navigate to the login page$/ do
  browser.navigate.to "https://login.sandbox.freeagent.com"
  sleep 3
end

When /^I login with an invalid credential combination$/ do
 
end

Then /^I should see the invalid credentials login error message$/ do
 
end