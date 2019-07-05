Rails.application.routes.draw do
  mount GrapeSwaggerRails::Engine => '/swagger'

  mount Endpoints::Base, at: '/api'

  root "guest#index"
end
