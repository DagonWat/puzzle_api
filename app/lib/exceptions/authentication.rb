# frozen_string_literal: true

module Exceptions
  module Authentication
    Error = Class.new(StandardError)

    class Unauthenticated < Error
      def initialize
        super('Request unauthenticated')
      end
    end

    class TokenExpired < Error
      def initialize
        super('Access Token Expired!')
      end
    end

    class InvalidToken < Error
      def initialize
        super('Access Token Invalid!')
      end
    end

    class InvalidCredentials < Error
      def initialize
        super('Email or Password is invalid!')
      end
    end
  end
end
