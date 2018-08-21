require 'test_helper'

class BookTest < ActiveSupport::TestCase
  setup do
    @book = Book.new
  end

  test "book requires a title" do
    refute @book.validate
    assert_includes @book.errors.full_messages, "Title can't be blank"
  end

  test "book requires an author" do
    refute @book.validate
    assert_includes @book.errors.full_messages, "Author must exist", @book.errors.full_messages.join("\n")
  end


  test "book requires a owner" do
    refute @book.validate
    assert_includes @book.errors.full_messages, "Owner must exist"
  end

end
