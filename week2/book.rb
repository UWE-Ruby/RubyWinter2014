class Book

  attr_accessor :pages, :title

  @@library_count = 0


  def self.library_count
    @@library_count
  end


  def initialize  pages, title="N/A"
    @pages = pages
    @title = title
    @@library_count += 1
  end

  def happy
    $global_hello = "hello"
    "There are #{@pages} happy pages in this book."
  end

end