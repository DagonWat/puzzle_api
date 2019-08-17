# frozen_string_literal: true

class User::CreateState < ApplicationState
  option :name
  option :email
  option :password
  option :password_confirmation

  output :user
end
