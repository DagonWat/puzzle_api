# frozen_string_literal: true

class User::IndexFlow < ApplicationFlow
  operations Token::Check,
             User::Index
end
