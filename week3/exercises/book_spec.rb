require './book.rb'

describe Book do
<<<<<<< HEAD

  	before :each do
  		@book = Book.new 542, "Programming Ruby"
  	end

  	context "::library_count" do
  		it "should tell us how many books are in our library" do
  			34233.times{ Book.new 3 }
  			Book.library_count.should eq 34234
  		end
  	end

  context "#pages" do
  	it "should have a pages" do
    	@book.should respond_to "pages"
  	end

  	it "should allow us to set the number of pages" do
  		@book.pages.should eq 542
  	end
  end

  context "#title" do
  	it "should ket us set and get a title" do
  		@book.title.should eq "Programming Ruby"
  	end
  end



end

=======
  
  it "should have a pages" do
    book = Book.new
    book.should respond_to "pages"
  end

end
>>>>>>> f7862ea7a840b4f8235c899e2c56a93c586fbd2d
