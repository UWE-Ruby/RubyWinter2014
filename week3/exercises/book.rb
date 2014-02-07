class Book

<<<<<<< HEAD
	attr_accessor :pages, :title

	@@library_count = 0

	def self.library_count
		@@library_count
	end

	def initialize pages = 0, title="N/A"
		@pages = pages
		@title = title
		@@library_count +=1
	end

	def happy
		$global_hello = "hello"
		"There are #{pages} happy pages in this book"
	end
=======
  def pages
    
  end
>>>>>>> f7862ea7a840b4f8235c899e2c56a93c586fbd2d

end