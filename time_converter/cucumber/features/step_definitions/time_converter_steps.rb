Given(/^I have entered (\d+):(\d+):(\d+)$/) do |arg1, arg2, arg3|
  @converter = Time_Converter.new(arg1, arg2, arg3)
end

Given(/^I have selected "(.*?)"$/) do |selected_timezone|
	@converter.selected_timezone(selected_timezone).should eq selected_timezone
end

When(/^I press convert$/) do
  @result = @converter.convert
end

Then(/^the result returned should be (\d+):(\d+):(\d+)$/) do |arg1, arg2, arg3|
  @result.should eq "#{arg1}:#{arg2}:#{arg3}"
end