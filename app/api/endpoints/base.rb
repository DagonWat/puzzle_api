# frozen_string_literal: true

module Endpoints
  class Base < Grape::API
    format :json

    namespace do
      mount Endpoints::Users
      mount Endpoints::Auth
    end
  end
end
