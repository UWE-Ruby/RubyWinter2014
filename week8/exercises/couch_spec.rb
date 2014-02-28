require_relative 'couch.rb'

describe Couch do
  before :each do
    @couch = Couch.new [:red, :red, :black, :black], [:grey, :grey], ['Bradley', 'Sticks']
  end
  it "should tell me the pillow colors" do
    @couch.pillow_colors.should eq ["red", "red", "black", "black"]
  end

  it "should tell me the cushions colors" do
    @couch.cushions_colors.should eq ["grey", "grey"]
  end

  it "should tell me the dogs names" do
    @couch.dog_names.should eq ["Bradley", "Sticks"]
  end

  it "should count the pillows" do
    @couch.how_many_pillows?.should eq 4
  end

  it "should count the cushions" do
    @couch.how_many_cushions?.should eq 2
  end

  it "should count the dogs" do
    @couch.how_many_dogs?.should eq 2
  end

end