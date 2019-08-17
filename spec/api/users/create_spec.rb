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

        p response.body

        user = Entities::User.represent(User.last).to_json

        expect(response.body).to eq(user)

        expect(user.name).to eq(params[:name])
        expect(user.email).to eq(params[:email])
        expect(user.try(:authenticate, params[:password])).to eq(user)
      end
    end
  end
end
