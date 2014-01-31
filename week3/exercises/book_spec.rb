require './book.rb'

describe Book do
  
  it "should have a pages" do
    book = Book.new
    book.should respond_to "pages"
  end

end