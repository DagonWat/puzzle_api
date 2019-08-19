# frozen_string_literal: true

class User::IndexState < ApplicationState
  option :token
  option :id
  option :decoded_token

  output :user
end

