Rails.application.routes.draw do
  captcha_route
  devise_for :accounts, controllers: {
    registrations: 'accounts/registrations',
    sessions: 'accounts/sessions',
    passwords: 'accounts/passwords'
  }
  resources :posts, param: :uuid
  resources :properties, param: :uuid

  get "/blog" => "posts#latest", as: :blog

  #admin routes
  get "/accounts" => 'admin#accounts', as: :accounts

  get "dashboard" => 'dashboard#index', as: :dashboard
  get "profile/:uuid" => 'dashboard#profile', as: :profile
  post "/agent/message" => "properties#email_agent", as: :email_agent


  root to: "public#main"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
