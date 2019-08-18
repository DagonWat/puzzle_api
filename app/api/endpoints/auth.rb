# frozen_string_literal: true

module Endpoints
  class Auth < Grape::API
    helpers ::GrapeFlow

    resource :auth do

      desc 'Auth user'
      params do
        requires :name, type: String
        requires :password, type: String
      end

      post 'login' do
        run_flow ::Auth::LoginFlow do
          present @state.token
        end
      end
    end
  end
end
