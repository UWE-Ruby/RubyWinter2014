class Printer
	def print(book)
    case book
    when FictionBook
      "This book is Fiction!"
    when NonFictionBook
      "This book is All True!!"
    when Book
		  "This book is a book. With the title: #{book.title}"
    end
	end
end

class Book
	attr_accessor :title, :author
end

class FictionBook < Book
end

class NonFictionBook < Book
end

