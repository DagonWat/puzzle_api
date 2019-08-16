# frozen_string_literal: true

module Endpoints
  class Auth < Grape::API

    resource :auth do

      desc 'Auth user'
      params do
        requires :name, type: String
        requires :password, type: String
      end

      post 'login' do
        Auth::LoginFlow.trigger(name: params[:name], password: params[:password])
      end
    end
  end
end

