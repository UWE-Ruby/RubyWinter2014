Given(/^I have entered the preceeding car distance as (\d+)$/) do |arg1|
  @distance = Calculator.new(arg1)

end

When /^I press calculate$/ do
  @distance.calculate
end

Then(/^the result returned should be the safe speed$/) do
  @speed == "Safe Speed"
end

