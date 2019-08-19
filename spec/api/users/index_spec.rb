# frozen_string_literal: true

require 'rails_helper'

describe 'Endpoints::Users' do
  describe 'namespace user' do
    describe 'GET /user/:id' do
      let(:user) { create(:user) }

      it 'get user' do
        params = {token: create_token(user.id)}

        get "/api/user/#{user.id}", params: params

        expect(response).to be_successful

        expect(json_response['id']).to eq(user.id)
        expect(json_response['name']).to eq(user.name)
      end
    end
  end
end

