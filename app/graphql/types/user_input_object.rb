module Types
  class UserInputObject < Types::BaseInputObject
    graphql_name "UserInputObject"
    argument :email, String, required: true
    argument :password, String, required: false
    argument :preferred_name, String, required: false
    argument :preferred_subject_pronoun, String, required: false
    argument :preferred_object_pronoun, String, required: false
  end
end
