Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'users#index'

  resources :users, only: [:new, :update, :show, :create] do
    collection do
      get '/signup', to: 'users#new'
      get '/login' => 'sessions#new'
      post '/login' => 'sessions#create'
      delete '/logout' => 'sessions#destroy'
      get '/profile', to: 'users#show'
    end
  end


end
