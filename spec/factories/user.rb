# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { 'Joe' }
    email { 'joe@gmail.com' }
    rating { 1200 }
    password { '12345678' }
    password_confirmation { '12345678' }
  end
end
