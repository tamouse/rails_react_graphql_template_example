module Mutations
  class CreateUser < Mutations::BaseMutation
    # TODO: define return fields
    field :user, Types::UserType, null: true
    field :errors, [String], null: false

    # TODO: define arguments
    argument :user_input, Types::UserInputObject, required: true

    # TODO: define resolve method
    def resolve(user_input:)

      h = user_input.to_h.with_indifferent_access
      h[:password_confirmation] = h[:password]

      binding.pry

      user = User.new(h)
      if user.save
        {
          user: user,
          errors: []
        }
      else
        {
          user: nil,
          errors: user.errors.full_messages
        }
      end
    end
  end
end
