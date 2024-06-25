require "test_helper"

class BorrowTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    user = User.create(email: "user@example.com", password: "password", password_confirmation: "password")
    book = Book.create(title: "Example Book", author: "Author Name", publish_year: 2021)
    borrow = Borrow.new(user: user, book: book, started_at: Time.current)
    assert borrow.valid?
  end

  test "should not be valid without started_at date" do
    user = User.create(email: "user@example.com", password: "password", password_confirmation: "password")
    book = Book.create(title: "Example Book", author: "Author Name", publish_year: 2021)
    borrow = Borrow.new(user: user, book: book, started_at: nil)
    assert_not borrow.valid?
  end

  test "should not be valid if book is already borrowed" do
    user = User.create(email: "user@example.com", password: "password", password_confirmation: "password")
    book = Book.create(title: "Example Book", author: "Author Name", publish_year: 2021)
    Borrow.create(user: user, book: book, started_at: Time.current, ended_at: nil)
    borrow = Borrow.new(user: user, book: book, started_at: Time.current)
    assert_not borrow.valid?
  end
end
