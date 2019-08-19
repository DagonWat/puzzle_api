# frozen_string_literal: true

require 'rails_helper'

describe 'Endpoints::Auth' do
  describe 'POST /login' do
    let(:user) { create(:user) }

    it 'login user' do
      params = {name: user.name, password: '12345678'}

      post '/api/auth/login', params: params

      expect(response).to be_successful

      #TODO change to ENV['JWT_SECRET']
      decoded_token = JWT.decode json_response, 'dasdafasfsasf', true, { algorithm: 'HS256' }

      expect(decoded_token.first['user_id']).to eq(user.id)
    end
  end
end

