Rails.application.routes.draw do
  resources :media
  resources :arts
  resources :locations
  resources :artists
  resources :tickets
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static#index"
  get '/profile' => 'profile#index'
end
