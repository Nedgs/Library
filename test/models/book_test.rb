require "test_helper"

class BookTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    book = Book.new(title: "Example Book", author: "Author Name", publish_year: 2021)
    assert book.valid?
  end

  test "should not be valid without title" do
    book = Book.new(title: nil, author: "Author Name", publish_year: 2021)
    assert_not book.valid?
  end

  test "should not be valid without author" do
    book = Book.new(title: "Example Book", author: nil, publish_year: 2021)
    assert_not book.valid?
  end

  test "should not be valid without publish year" do
    book = Book.new(title: "Example Book", author: "Author Name", publish_year: nil)
    assert_not book.valid?
  end
end
