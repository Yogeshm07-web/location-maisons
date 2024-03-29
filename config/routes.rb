Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get 'home', to: 'pages#home', as: 'home'

  resources :properties do
    resources :bookings, except: :index
  end
  get 'booking', to: 'bookings#ryan', as: 'ryan'
  devise_scope :user do
    authenticated :user do
      root "properties#index", as: :authenticated_root
    end
    unauthenticated do
      root "pages#home", as: :unauthenticated_root
    end
  end
end
