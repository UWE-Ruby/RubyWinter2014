Given(/^I have entered (\d+) into the converter$/) do |temp|
  @converter = Converter.new(temp)
end

Given(/^I set the type to (".*"?)$/) do |type|
	@converter.type = type
end

When(/^I press convert$/) do
  @converter.convert
end

Then(/^the result returned should be (\d+)\.(\d+)$/) do |arg1, arg2|
  @converter.degrees_c = "#{arg1}.#{arg2}"
end