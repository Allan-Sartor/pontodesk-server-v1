Rails.application.routes.draw do
  # User route for sign_up
  devise_for :users, controllers: { registrations: 'registrations' }
  
  namespace :api do
    namespace :v1 do
      # Autenticated routes and validated token
      post :auth, to: 'authentication#login'
      get  '/auth_token', to: 'authentication#validate_user'
      
      # Users routes
      get  '/usersall', to: 'user#index'
      get  '/usershow/:id', to: 'user#show'

      # Calls routes
      resource :calls
      get '/calls/:id', to: 'calls#show'
      get '/calls_all', to: 'calls#get_all_calls'
    end
  end
end