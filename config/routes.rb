Rails.application.routes.draw do
  root "tops#new"

  resources :tops, only: %i[create]
end
