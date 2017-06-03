Rails.application.routes.draw do
  jsonapi_resources :users
  jsonapi_resources :reviews
end
