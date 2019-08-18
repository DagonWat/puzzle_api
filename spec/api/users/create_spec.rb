# frozen_string_literal: true

require 'rails_helper'

describe 'Endpoints::Users' do
  describe 'namespace users' do
    describe 'POST /users' do

      it 'creates user' do
        params = {name: "name", email: "name@gmail.com", password: '12314', password_confirmation: '12314'}

        expect do
          post '/api/users', params: params
        end.to change(User, :count).by(1)

        expect(response).to be_successful

        user = User.last

        expect(json_response['name']).to eq(params[:name])
        expect(json_response['email']).to eq(params[:email])
      end
    end
  end
end
