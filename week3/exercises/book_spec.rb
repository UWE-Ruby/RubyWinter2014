require './book.rb'

describe Book do

 before :each do
   @book = Book.new 542, "Programming Ruby"
 end
 
 context "::library_count" do
   it "should tell us how many books are in our library" do
     Book.library_count.should eq 542
   end
 end 

 context "#pages" do
   it "should have a pages" do
     @book.should respond_to "pages"
   end

 it "should allow us to get the number of pages" do
   @book.pages.should eq 542
   end
 end

 context "#title" do
   it "should let us read the title" do
     @book.title.should eq "Programming Ruby"
   end
 end
end
