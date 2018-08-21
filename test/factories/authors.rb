require 'faker'
FactoryBot.define do
  factory :author do
    name { Faker::Name.name}

    factory :full_author do
      url { Faker::Internet.url }
    end
  end
end
