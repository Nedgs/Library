require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "should be valid with valid attributes" do
    user = User.new(email: "user@example.com", password: "password", password_confirmation: "password")
    assert user.valid?
  end

  test "should not be valid without email" do
    user = User.new(email: nil, password: "password", password_confirmation: "password")
    assert_not user.valid?
  end

  test "should not be valid with duplicate email" do
    User.create(email: "test@example.com", password: "password", password_confirmation: "password")
    user = User.new(email: "test@example.com", password: "password", password_confirmation: "password")
    assert_not user.valid?
  end
end
