# frozen_string_literal: true

class Auth::Login < ApplicationOperation
  def behavior
    user = User.find_by(name: state.name).try(:authenticate, state.password)
    state.user = user if user.present?
  end
end
