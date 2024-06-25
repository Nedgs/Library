require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.create(email: "user@example.com", password: "password", password_confirmation: "password")
    @book = Book.create(title: "Example Book", author: "Author Name", publish_year: 2021)
    sign_in @user
  end

  test "should get index" do
    get books_url
    assert_response :success
  end

  test "should show book" do
    get book_url(@book)
    assert_response :success
  end

  test "should destroy book" do
    assert_difference('Book.count', -1) do
      delete book_url(@book)
    end
    assert_redirected_to books_url
  end
end
