Given(/^I have entered (\d+) into the converter$/) do |arg1|
  @converter = Converter.new(arg1)
end

Given(/^I set the type to Fahrenheit$/) do
  @converter.type = "far"
end

When(/^I press convert$/) do 
  result = @converter.far_convert
end

Then(/^the result returned should be (\d+)\.(\d+)$/) do |arg1, arg2|
  pending # express the regexp above with the code you wish you had
end
