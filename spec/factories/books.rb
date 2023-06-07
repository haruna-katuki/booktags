FactoryBot.define do
  factory :book do
    title { Faker::Lorem.word }
    author { Faker::Name.name }
    translator { Faker::Name.name }
    publisher { Faker::Company.name }
    publish_year { Faker::Number.between(from: 1900, to: 2023) }
    total_page { Faker::Number.number(digits: 3) }
    start_date { Faker::Date.between(from: '2022-06-06', to: '2023-06-06') }
    association :user
  end
end
