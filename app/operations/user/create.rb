# frozen_string_literal: true

class User::Create < ApplicationOperation
  def behavior
    state.user = User.create!(name: state.name, email: state.email,
                              password: state.password, password_confirmation: state.password,
                              rating: 1000)
  end
end
