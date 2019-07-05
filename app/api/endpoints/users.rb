# frozen_string_literal: true

module Endpoints
  class Users < Grape::API

    resource :users do

      desc 'Create new User'
      params do
        requires :name, type: String
        requires :email, type: String
      end

      post do
        CreateUserFlow.trigger(name: params[:name], email: params[:email])
      end

    end
  end
end
