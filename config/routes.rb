Rails.application.routes.draw do
  get 'dashboard/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: 'home#index'
  devise_for :users
end
