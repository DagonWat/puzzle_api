# frozen_string_literal: true

module Endpoints
  class Users < Grape::API

    resource :users do

      desc 'Create new User'
      params do
        requires :name, type: String
        requires :email, type: String
        requires :password, type: String
        requires :password_confirmation, type: String
      end

      post do
        User::CreateFlow.trigger(name: params[:name], email: params[:email])
      end

    end
  end
end
