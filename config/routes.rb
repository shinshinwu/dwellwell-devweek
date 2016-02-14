Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'users#index'

  get '/samples' => 'samples#index', as: :sample
  post '/samples' => 'samples#actionable', as: :sample_request

  resources :users, only: [:new, :update, :show, :create] do
    collection do
      get '/signup', to: 'users#new'
      get '/login', to: 'sessions#new'
      post '/login', to: 'sessions#create'
      delete '/logout', to: 'sessions#destroy'
      get '/profile', to: 'users#show'
      get '/step1', to: 'users#basic_info'
    end
  end

end
