require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  setup do
    @author = Author.new
  end

  test "author requires a name" do
    refute @author.validate
    assert_includes @author.errors.full_messages, "Name can't be blank"
  end
end
