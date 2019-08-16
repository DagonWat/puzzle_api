# frozen_string_literal: true

class User::CreateState < ApplicationState
  option :name
  option :email
  option :password
end
