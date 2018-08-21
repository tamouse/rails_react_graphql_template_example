require "faker"
FactoryBot.define do
  factory :book do
    title { Faker::Book.title }

    factory :full_book do
      isbn { Faker::Number.number(13) }
      purchased_on { Faker::Date.between(8.years.ago, 1.year.ago) }
      finished_reading_on { Faker::Date.between(6.weeks.ago, 2.days.ago) }
      rating { Faker::Number.number(5) }
      private { Faker::Boolean.boolean(0.7)}

      factory :full_book_with_author do
        author
      end
    end

  end
end
