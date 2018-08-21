FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { "password" }
    password_confirmation { "password" }

    factory :full_user do
      preferred_name { Faker::Name.name }
      preferred_subject_pronoun { %w[she he ze zhe kif they].sample }
      preferred_object_pronoun { %w[her his zir zhir ka their].sample }
    end

    factory :admin_user do
      email { Faker::Internet.email("admin") }
      admin { true }
      preferred_name { Faker::Name.name }
    end
  end
end
