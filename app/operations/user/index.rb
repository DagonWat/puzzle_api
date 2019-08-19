# frozen_string_literal: true

class User::Index < ApplicationOperation
  def behavior
    state.user = User.find(state.id)
  end
end
