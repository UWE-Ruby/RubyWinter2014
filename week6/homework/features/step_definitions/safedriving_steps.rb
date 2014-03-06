#require_relative '../../../../../../testgem/lib/safedrivingcalculator.rb'
  
Given /^I have entered (\d+) miles per hour into the calculator$/ do |arg1|
  @calculator = Calculator.new(arg1)

end

Given /^I set the type of car to (\w+)$/ do |arg1|
  @calculator.car_type(arg1)
end

Given /^I set the preceeding car distance to (\d+) car lengths$/ do |arg1|
  # @calculator.distance(arg1)
  @calculator.distance(arg1)
end

When /^I press calculate$/ do
  @calculator.calculate
end

Then /^the result returned should be safe$/ do
  @calculator.calculate == "safe"
end

Then /^the result returned should be unsafe$/ do
  @calculator.calculate == "safe"
end


