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
    @evennumber.should be_even
  end

end
