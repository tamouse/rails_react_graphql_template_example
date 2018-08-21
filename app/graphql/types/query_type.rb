module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :user, Types::UserType, "eventually this will be the current logged in user", null: false do
      argument :id, Int, required: true
    end

    def user(id:)
      User.find(id)
    end

    field :users, [Types::UserType], null: true

    def users
      User.all
    end

  end
end
