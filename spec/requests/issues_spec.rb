require 'rails_helper'

require Rails.root.join('spec', 'requests',
                        'shared_examples', 'respond_to_missing.rb')

RSpec.describe "Issues", type: :request do

  let!(:issues) { create_list(:issue, 10) }

  describe '#Index /issues' do
    before { get issues_path, headers: { 'Accept': 'application/json' } }

    it 'should respond with correct http response' do
      expect(response).to have_http_status(200)
    end

    it 'should respond with correct json response' do
      expect(json_response.size).to eq(10)
    end
  end

  describe '#Show /issues/:id' do

    context 'valid_atttributes' do

      before { get issue_path(issues.first.id), headers: { 'Accept': 'application/json' } }

      it 'should respond with correct http response' do
        expect(response).to have_http_status(200)
      end

      it 'should respond with correct json response' do
        expect(json_response[:id]).to eq(issues.first.id)
      end

    end

    context 'invalid params' do
      it_behaves_like "respond to missing", '/issues/-1'
    end

  end

end