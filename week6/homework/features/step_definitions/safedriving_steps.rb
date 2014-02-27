  
Given /^I have entered (\d+) miles per hour into the calculator$/ do |arg1|
  @calculator = Calculator.new(arg1)

end

Given /^I set the type of car to sedan$/ do
  @calculator.type = "sedan"
end

Given /^I set the preceeding car distance to (\d+) car lengths$/ do |arg1|
  @calculator.distance = arg1
end

When /^I press calculate$/ do
  @type = sedan
end

Then /^the result returned should be safe$/ do
  pending # express the regexp above with the code you wish you had
end

Then /^the result returned should be unsafe$/ do
  pending # express the regexp above with the code you wish you had
end


