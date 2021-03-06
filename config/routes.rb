Rails.application.routes.draw do
  resources :comments
  resources :posts
  root to: 'home#index'
  resources :user_sessions
  resources :users
  get '/', to: 'home#index', as: 'main_page'
  post 'like', to: 'home#like'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
