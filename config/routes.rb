Rails.application.routes.draw do
  # User route for sign_up
  devise_for :users, controllers: { registrations: 'registrations' }
  
  namespace :api do
    namespace :v1 do
      # Autenticated routes and validated token
      post :auth, to: 'authentication#login'
      get  '/auth_token', to: 'authentication#validate_user'
      
      # Users routes for Admin
      get '/usersall', to: 'user#index'
      get '/usershow/:id', to: 'user#show'

      # Calls routes for Admin
      get '/calls_all', to: 'calls#get_all_calls'
      delete '/calls_delete/:id', to: 'calls#destroy'

      # Calls routes for User
      get '/calls', to: 'calls#index'
      get '/calls_find/:id', to: 'calls#show'
      post '/calls', to: 'calls#create'
      put '/calls_edit/:id', to: 'calls#update'
      
      get '/call_count_of_day', to: 'dashboard#index'

      # Reviews routes for User
      resources :reviews
    end
  end
end