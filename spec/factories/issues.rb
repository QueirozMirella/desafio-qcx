FactoryBot.define do
    factory :issue do
      number Faker::Number.number(digits: 1)
      title Faker::Lorem.sentence
      github_id Faker::Lorem.characters(number: 5)
    end
  end