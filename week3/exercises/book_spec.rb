require './book.rb'

describe Book do

  before(:each) do
  	@book = Book.new
  	@book.pages = 2222
  	@book.title = "Fred"
  end

  context "#Pages"  do

    it "should have pages" do
      @book.should respond_to "pages"
    end

    it "should allow us to set the number of pages" do
    	@book.pages.should eq 2222
    end

  end

  context "#Title" do

    it "Should set and get the title" do 
    	@book.title.should eq "Fred"
    end

  end

end