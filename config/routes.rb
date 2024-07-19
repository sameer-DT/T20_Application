Rails.application.routes.draw do
  resources :dummies
  resources:teams, only: [:show,:index,:new,:create,:edit,:update,:destroy]
  resources:players, only: [:show,:index,:new,:create,:edit,:update,:destroy]

  # resources:players, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
  root "application#home"
  # Defines the root path route ("/")
  #  root to: redirect('/main.html')
  # get "index"=>"teams#index"
end
