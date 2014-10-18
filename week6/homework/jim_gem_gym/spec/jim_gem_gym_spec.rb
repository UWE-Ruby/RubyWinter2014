require 'jim_gem_gym'

describe Reality do
  
  it "should tell me the world view" do
    Reality.new("neutral").worldview.should eq "You see the world as neutral..."
  end
  
end
