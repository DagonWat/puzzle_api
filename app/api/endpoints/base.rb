# frozen_string_literal: true

module Endpoints
  class Base < Grape::API
    rescue_from ::Exceptions::Authentication::InvalidToken,
                ::Exceptions::Authentication::InvalidCredentials,
                ::Exceptions::Authentication::Unauthenticated,
                ::Exceptions::Authentication::TokenExpired do |e|
      error! e, 401
    end

    rescue_from ActiveRecord::RecordNotFound do |e|
      error! 'Not Found!', 404
    end

    rescue_from Grape::Exceptions::ValidationErrors do |e|
      error!({messages: e.full_messages}, 400)
    end

    rescue_from Exceptions::DataInvalid do |errors|
      error!({ messages: errors }, 400)
    end

    rescue_from :all

    format :json

    namespace do
      mount Endpoints::Users
      mount Endpoints::Auth
    end
  end
end
