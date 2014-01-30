$global_hello = "hi there"

module Library
  class Book
    HELLO = "hello I shouln't change..."

    attr_accessor :pages, :title

    @@library_count = 0

    def self.library_count
      @@library_count
    end

    def initialize pages = 0, title = "N/A"
      @pages = pages
      @title = title
      @@library_count += 1
    end


    def happy
      $global_hello = "hello"
      "There are #{@pages} happy pages in this book"
    end


  end
end