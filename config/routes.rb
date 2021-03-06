Rails.application.routes.draw do
  resources :sizes
  namespace :api do
    namespace :v1 do
      resources :orders #, only [:create, :update, :destroy]
      resources :users, only: [:show]
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
