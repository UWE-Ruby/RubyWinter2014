class Book

  attr_accessor :pages, :title

  @@library_count = 0

  def initialize pages = 0, title="N/A"
    @pages = pages
    @title = title
    @@library_count += 1 
  end

  def self.library_count
      @@library_count
  end
 
  def happy
    "There are #{@pages} happy pages in this book"
  end

end
