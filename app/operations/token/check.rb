# frozen_string_literal: true

class Token::Check < ApplicationOperation
  def behavior
    begin
      #TODO change to ENV['JWT_SECRET']
      state.decoded_token = JWT.decode state.token, 'dasdafasfsasf', true, { algorithm: 'HS256' }
    rescue JWT::ExpiredSignature
      raise Exceptions::Authentication::TokenExpired
    end
  end
end
