Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  devise_for :users

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :gyms, only: [ :index,:show,:update,:create, :destroy ]
    end
  end

  root to: "gyms#index"
  resources :gyms, only: [:show] do
    resources :comments, only: [:create]
  end
end
