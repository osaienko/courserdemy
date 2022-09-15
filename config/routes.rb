Rails.application.routes.draw do
  resources :lessons
  devise_for :users
  root 'home#index'
  resources :courses
  resources :users, only: [:index, :edit, :show, :update]
  get "static_pages/landing_page"
  get "privacy_policy", to: "static_pages#privacy_policy"
  get 'home/activity'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
