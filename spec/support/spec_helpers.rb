# frozen_string_literal: true

module SpecHelpers
  def json_response
    JSON.parse(response.body)
  end

  def create_token(id)
    payload = {user_id: id, exp: Time.now.to_i + 180.days}
    #TODO change to ENV['JWT_SECRET']
    JWT.encode payload, 'dasdafasfsasf', 'HS256'
  end
end
