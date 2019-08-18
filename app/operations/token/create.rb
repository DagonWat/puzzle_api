# frozen_string_literal: true

class Token::Create < ApplicationOperation
  def behavior
    exp = Time.now.to_i + 180.days
    exp_payload = { user_id: state.user.id, exp: exp }
    #TODO change to ENV['JWT_SECRET']
    state.token = JWT.encode exp_payload, 'dasdafasfsasf', 'HS256'
  end
end
