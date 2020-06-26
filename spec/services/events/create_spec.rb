require 'rails_helper'

RSpec.describe Events::Create do
  let!(:valid_params) do
    {
        issue: {
            number: Faker::Number.number(digits: 1),
            title: Faker::Lorem.sentence,
            id: Faker::Lorem.characters(number: 5)
        },
        event: {
            action: 'create'
        }
    }
  end

  let!(:invalid_params) do
    {
        issue: {
            number: Faker::Number.number(digits: 1),
            title: nil
        },
        event: {
            action: 'create'
        }
    }
  end


  subject(:create_event_service) do
    described_class.new(valid_params)
  end

  subject(:create_event_service_with_invalid_params) do
    described_class.new(invalid_params)
  end

  specify do
    create_event_service.call
    expect(create_event_service.success?).to be_truthy
  end

  specify do
    create_event_service_with_invalid_params.call
    expect(create_event_service_with_invalid_params.success?).to be_falsey
  end
end