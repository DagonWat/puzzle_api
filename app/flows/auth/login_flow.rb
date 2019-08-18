# frozen_string_literal: true

class Auth::LoginFlow < ApplicationFlow
  operations Auth::Login,
             Token::Create
end
