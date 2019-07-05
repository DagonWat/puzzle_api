# frozen_string_literal: true

require 'rails_helper'

describe 'Endpoints::Users' do
  describe 'namespace users' do
    describe 'POST /users' do

      it 'creates user' do
        params = {name: "name", email: "name@gmail.com"}

        expect do
          post '/api/users', params: params
        end.to change(User, :count).by(1)

        expect(response).to be_successful
        #expect(User.last.created_by).to eq(admin)
      end
    end
  end
end
