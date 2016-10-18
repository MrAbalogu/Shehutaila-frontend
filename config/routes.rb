Rails.application.routes.draw do

  resources :styles
  devise_for :users, controllers: { registrations: "registrations" }

  authenticated :user do
    root 'pages#landingpage9', as: :authenticated_root
  end

  # namespace :api do
  #   namespace :v1 do
  #     devise_scope :user do
  #       post 'sessions' => 'sessions#create', :as => 'login'
  #       delete 'sessions' => 'sessions#destroy', :as => 'logout'
  #     end
  #   end
  # end

  # namespace :api do
  #   namespace :v1 do
  #     devise_scope :user do
  #       post 'registrations' => 'registrations#create', :as => 'register'
  #       post 'sessions' => 'sessions#create', :as => 'login'
  #       delete 'sessions' => 'sessions#destroy', :as => 'logout'
  #     end
  #   end
  # end

  root 'users#home'
  get  '/admin' => 'styles#admin'
  get  '/admin/users' => 'styles#users_dashboard'
  get  '/admin/styles' => 'styles#styles_dashboard'
  
  # get 'pages/landingpage'
  get '/dashboard' => "pages#landingpage9"
  # get '/frontpage' => "pages#landingpage11"
  # get '/details' => "pages#landingpage8"
  # get '/search' => "pages#landingpage5"
  # get '/searchexample' => "pages#landingpage2"
  # get '/status' => "pages#landingpage3"
  # get '/confirm_account' => "pages#confirm_account"
  # get 'pages/lp2'
  # get 'pages/playground'

  
  # resources :users, :only => [:show]

end
