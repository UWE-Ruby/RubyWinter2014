require './book.rb'

describe Book do 

  before :each do
    @book = Book.new 542, "Programming Ruby"
  end 

  context "::library_count" do
    it "should tell us how many books we have" do
      34233.times{ Book.new 3 }
      Book.library_count.should eq 34234
    end
  end

  context "#pages" do
    it "should have a pages" do
      @book.should respond_to "pages"
    end

    it "should allow us to set the number" do
      @book.pages = 542
      @book.pages.should eq 542
      end
    end

    context "#title" do
      it "should let us set and get a title" do
        @book.title = "Programming Ruby"
        @book.title.should eq "Programming Ruby"
      end
    end
end