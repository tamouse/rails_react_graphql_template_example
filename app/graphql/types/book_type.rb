module Types
  class BookType < Types::BaseObject
    field :title, String, null: false
    field :isbn, String, null: true
    field :purchased_on_ms, Integer, null: true
    field :finished_reading_on_ms, Integer, null: true
    field :rating, Integer, null: true
    field :private, Boolean, null: true
    field :created_at_ms, Integer, null: true
    field :updated_at_ms, Integer, null: true
  end
end
