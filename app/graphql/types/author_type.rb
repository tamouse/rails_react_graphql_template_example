module Types
  class AuthorType < Types::BaseObject
    field :name, String, null: false
    field :url, String, null: true
    field :created_at_ms, Integer, null: false
    field :updated_at_ms, Integer, null: false
  end
end
