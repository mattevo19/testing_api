Rails.application.routes.draw do
  get 'comments/create'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :gyms, only: [ :index,:show,:update,:create, :destroy ]
    end
  end
  # Defines the root path route ("/")
  resources :gyms, only: [:show] do
    resources :comments, only: [:create]
  end
  root to: "gyms#index"
end
