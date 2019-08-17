# frozen_string_literal: true

module AuthHelper
  def sign_in(user: nil)
    return nil unless user

    token = JsonWebToken::Base.encode(user_id: user.id, user_role: user.role)

    Authentication::TokensRegistry.save(token)

    { 'X-Access-Token' => token }
  end
end
