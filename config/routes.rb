Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  namespace :api do
    namespace :v1 do
      # Autenticated routes and validated token
      post :auth, to: 'authentication#login'
      get  '/auth_token', to: 'authentication#fetch'
      
      # Users routes
      get  '/usersall', to: 'user#index'
      get  '/usershow/:id', to: 'user#show'

      # Calls routes
      resource :calls
    end
  end
end