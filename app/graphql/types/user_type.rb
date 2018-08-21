module Types
  class UserType < Types::BaseObject
    graphql_name "User"
    description "A user in the book system"
    field :id, Int, null: false
    field :email, String, null: false
    field :preferred_name, String, null: true
    field :preferred_subject_pronoun, String, null: true
    field :preferred_object_pronoun, String, null: true
    field :admin, Boolean, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :created_at_ms, Int, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at_ms, Int, null: false
  end
end
