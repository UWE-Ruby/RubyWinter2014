Given(/^I am not yet playing$/) do
end

When(/^I start a new MadLib$/) do
	@madlib = MadLib.new
end

Then(/^I should see "(.*?)"$/) do |arg|
  @madlib.madlib_types
end

Given(/^I have started a game and chosen a type$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^The computer prompts for a type of word$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I enter a word$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^There are still words to add to the MadLib$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I have entered all words for this MadLib$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^The computer should print out the completed MadLib$/) do
  pending # express the regexp above with the code you wish you had
end
