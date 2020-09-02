Rails.application.routes.draw do
  resources :users, :except => :new
  get 'signup', to: 'users#new'
  resources :articles
  get 'home/index'
  get 'home/about'
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :questions
  root to: 'questions#index'
end
