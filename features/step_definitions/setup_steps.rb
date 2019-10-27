

When("I choose {string} in the business type dropdown") do |string|
    @setupPage.selectBusinessTypeOption(string)
end

Then /^I should see the Freeagent sandbox setup page$/ do
    expect(@setupPage.setupPageIsDisplayed()).to be true
end

Then /^I should see the state dropdown$/ do
    expect(@setupPage.stateDropdownIsDisplayed()).to be true
end