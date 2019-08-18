# frozen_string_literal: true

class Auth::LoginState < ApplicationState
  option :name
  option :password
  option :user

  output :token
end

