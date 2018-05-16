Rails.application.routes.draw do
  resources :wikis
  resources :welcome

  devise_for :users, controllers: { confirmation: 'confirmations' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
