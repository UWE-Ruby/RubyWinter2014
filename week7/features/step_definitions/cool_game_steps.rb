Given(/^Lynn is logged in$/) do
  @game = CoolGame.new("Lynn")
end

Given(/^Sam is logged in$/) do
  @game = CoolGame.new("Sam")
end

When(/^she clicks move$/) do
  @game.move
end

Then(/^she wins the game$/) do
  @game.won?.should be_true
end

Then(/^she loses the game$/) do
   @game.won?.should be_false
end

Then(/^she sees the text "(.*?)"$/) do |arg1|
  @game.output.should eq arg1
end
