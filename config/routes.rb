Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root(to: 'home#index')
  devise_for(:users)

  get('dashboard', to: 'dashboard#index')
  scope(:dashboard) do
    resources(:ywts, only: [:index, :new, :create])
  end
end
