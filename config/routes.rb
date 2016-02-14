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
      get '/login', to: 'sessions#new'
      post '/login', to: 'sessions#create'
      delete '/logout', to: 'sessions#destroy'
      get '/profile', to: 'users#show'
      get '/step1', to: 'users#basic_info'
      post '/step1', to: 'users#update_basic_info'
      get '/step2', to: 'users#income_info'
      post '/step2', to: 'users#update_income_info'
      get '/step3', to: 'users#dependent_info'
      post '/step3', to: 'users#update_dependent_info'
      get '/step4', to: 'users#background_info'
      post '/step4', to: 'users#update_background_info'
    end
  end

  get 'listings', to: 'dwellings#index'

end
