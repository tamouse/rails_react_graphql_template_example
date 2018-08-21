require 'test_helper'

class NoteTest < ActiveSupport::TestCase
  setup do
    @note = Note.new
  end

  test "note must have a body" do
    refute @note.validate
    assert_includes @note.errors.full_messages, "Body can't be blank"
  end

  test "note must have a noteable" do
    refute @note.validate
    assert_includes @note.errors.full_messages, "Noteable must exist"
  end
end
