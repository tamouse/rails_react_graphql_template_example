FactoryBot.define do
  factory :note do
    body { Faker::Lorem.paragraphs(10).join("\n\n") }
  end
end
