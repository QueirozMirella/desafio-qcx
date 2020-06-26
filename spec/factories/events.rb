FactoryBot.define do
    factory :event do
      action Faker::Lorem.word
      association :issue
    end
  end