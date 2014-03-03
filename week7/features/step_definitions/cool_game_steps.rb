Given(/^"(.*?)" is logged in$/) do |name|
  @game = CoolGame.new(name)
end

When(/^he clicks move$/) do
  @game.move
end

Then(/^he wins the game$/) do
  @game.won?.should be_true
end

Then(/^he loses the game$/) do
  @game.lose?.should be_false
end

Then(/^he sees the text "(.*?)"$/) do |arg1|
  @game.output.should eq arg1
end
