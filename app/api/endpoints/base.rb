# frozen_string_literal: true

module Endpoints
  class Base < Grape::API
    namespace do
      mount Endpoints::Users
    end
  end
end
