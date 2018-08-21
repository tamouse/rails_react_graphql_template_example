FactoryBot.define do
  factory :book do
    title "MyString"
    owner nil
    author nil
    isbn "MyString"
    purchased_on "2018-08-20"
    finished_reading_on "2018-08-20"
    rating 1
  end
end
