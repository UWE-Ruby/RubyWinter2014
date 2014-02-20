# - Write a passing rspec file called even_number_spec.rb that tests a class called EvenNumber.
#      - The EvenNumber class should:
#         - Only allow even numbers
#         - Get the next even number
#         - Compare even numbers
#         - Generate a range of even numbers

require "#{File.dirname(__FILE__)}/even_number"

describe EvenNumber do
  before do
    @evennumber = EvenNumber.new
  end
  
  it "should only allow even numbers" do
    @evennumber.next(3).should be_false
  end
  
  it "should return the next even number" do
    @evennumber.next(2).should equal 4
  end

  it "should compare even numbers" do
    @evennumber.compare(2,2).should be_true
  end
   
  it "should not return true of numbers are not the same" do
    @evennumber.compare(2,4).should_not be_true  
  end

  it "should generate a range of even numbers" do
    @evennumber.range(2,8).should be_a Range
  end

end
