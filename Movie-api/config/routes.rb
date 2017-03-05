Rails.application.routes.draw do
  resources :users, only: [:create, :show, :destroy] do

    collection do
      post '/login', to: 'users#login'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :movies
  resources :reviews
end
