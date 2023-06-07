FactoryBot.define do
  factory :post do
    memo { Faker::Lorem.sentence }
    page { Faker::Number.number(digits: 3) }
    hidden_check { "true" }
    association :book
  end
end
