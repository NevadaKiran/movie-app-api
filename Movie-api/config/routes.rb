Rails.application.routes.draw do
  resources :users, only: [:create, :show, :destroy] do
    resources :movies
    resources :reviews
    collection do
      post '/login', to: 'users#login'
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
