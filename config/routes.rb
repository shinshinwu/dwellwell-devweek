Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'users#index'

  get '/samples' => 'samples#index', as: :sample
  post '/samples' => 'samples#actionable', as: :sample_request
  post '/inbound' => 'samples#inbound_web_hook', as: :inbound

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
