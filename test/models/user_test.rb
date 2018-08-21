require 'test_helper'

class UserTest < ActiveSupport::TestCase
  setup do
    @user = User.new
  end

  test "user requires an email address" do
    refute @user.validate
    assert_includes @user.errors.full_messages, "Email can't be blank"
  end

end
