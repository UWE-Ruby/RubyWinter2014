require_relative 'couch.rb'

describe Couch do
  before :each do
    @couch = Couch.new [:red, :red, :black, :black], [:grey, :grey], ['Bradley', 'Sticks']
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

  it "should respond to something silly with 'hi'" do
    pending
    @couch.happy.should eq 'hi'
  end

  it "should respond to something silly" do
    pending
    @couch.respond_to?(:happy).should be_true
    @couch.should respond_to :happy
  end

  it "should define something silly with my block" do
    pending
    @couch.happy{|mm| "#{mm} hello world"}.should eq "method missing hello world"
    @couch.happy{"hi"}.should eq "method missing hello world"
  end

end