FactoryBot.define do
  factory :profile do
    favorite_genre { Faker::Lorem.word }
    favorite_book1 { Faker::Lorem.word }
    favorite_book2 { Faker::Lorem.word }
    favorite_book3 { Faker::Lorem.word }
    favorite_author1 { Faker::Name.name }
    favorite_author2 { Faker::Name.name }
    favorite_author3 { Faker::Name.name }
    birth_date { Faker::Date.birthday(min_age: 18, max_age: 90) }
    association :user
  end
end
