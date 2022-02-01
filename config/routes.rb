Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :gyms, only: [ :index ]
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end
