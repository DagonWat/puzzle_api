# frozen_string_literal: true

class CreateUser < ApplicationOperation
  def behavior
    User.create!(name: state.name, email: state.email, rating: 1000)
  end
end
