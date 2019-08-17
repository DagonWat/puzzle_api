# frozen_string_literal: true

module Endpoints
  class Users < Grape::API
    helpers ::GrapeFlow

    namespace :users do

      desc 'Create new User'
      params do
        requires :name, type: String
        requires :email, type: String
        requires :password, type: String
        requires :password_confirmation, type: String, same_as: :password
      end

      post do
        run_flow User::CreateFlow do
          present @state.user, with: Entities::User
        end
      end
    end
  end
end
