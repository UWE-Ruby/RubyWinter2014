require './books.rb'
describe Printer do
	context "#printing" do
		it "should print out the right thing for Fiction" do
			printer = Printer.new
			fiction = FictionBook.new
			printer.print(fiction).should eq "This book is Fiction!"
		end
    it "should print out the right thing for NonFiction" do
      printer = Printer.new
      non_fiction = NonFictionBook.new
      printer.print(non_fiction).should eq "This book is All True!!"
    end

    it "should print out the right thing for SciFi Books" do
      pending
      printer = Printer.new
      book = SciFiBook.new
      printer.print(book).should eq "This Book is Cool, I found it with my Tardis."
    end

    it "should print out the right thing for Books" do
      printer = Printer.new
      book = Book.new
      book.title = "Test Book"
      printer.print(book).should eq "This book is a book. With the title: #{book.title}"
    end
	end
end
