Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  resources :sample_articles
  resources :articles
  root 'statics#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
