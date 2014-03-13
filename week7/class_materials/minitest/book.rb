class Book
  attr_writer :pages
  attr_accessor :page_count, :title, :author

  def initialize title = "", author = "", page_count = 0
    @title = title
    @author = author
    @page_count = page_count
  end

  def characters
    @pages.map(&:length).inject :+
  end

  def pretty_print
    "#{title} - #{author} pages: #{page_count}"
  end
end

require 'minitest/autorun'

# Unit tests

class TestBook < MiniTest::Unit::TestCase
  def setup
    @book = Book.new('test', "Mr. Test", 4)
  end

  def test_that_book_can_print_pretty
    assert_equal "#{@book.title} - #{@book.author} pages: #{@book.page_count}", @book.pretty_print
  end
end

# Specs

describe Book do
  before do
    @book = Book.new
    @book.pages = ['This is page 1', 'Page 2 is this one', 'Page 3 is short', 'Page 4 is very very very long']
  end

  describe "when counting characters" do
    it "should count the characters on every page" do
      @book.characters.must_equal 76
    end
  end
end