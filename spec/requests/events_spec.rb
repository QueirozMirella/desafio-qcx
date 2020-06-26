require 'rails_helper'

RSpec.describe "Events", type: :request do

  describe '#Index events GET /issues/:id/events ' do

    let!(:event) { create(:event) }

    before { get issue_events_path(event.issue.number), headers: { 'Accept': 'application/json' } }

    it 'should respond with correct http response' do
      expect(response).to have_http_status(200)
    end

    it 'should respond with correct json response' do
      expect(json_response.size).to eq(1)
      expect(json_response[0][:issue_id]).to eq(event.issue.id)
    end

  end

  describe '#Create events POST /events' do

    # Params comes from github.com/web_hooks
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

    context 'with invalid params' do
      it 'should return correct http status' do
        post events_path, params: invalid_params, headers: { 'Accept': 'application/json' }
        expect(response).to have_http_status(:unprocessable_entity)
      end
    end


  end
end