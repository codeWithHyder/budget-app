FactoryBot.define do
  factory :category do
    name { Faker::Lorem.word }
    icon { Faker::Lorem.word }
    association :user
  end

  factory :user do
    email { Faker::Internet.email }
    password { Faker::Internet.password }
  end

  factory :expense do
    association :category
    association :user
    amount { Faker::Number.decimal(l_digits: 2) }
  end
end
