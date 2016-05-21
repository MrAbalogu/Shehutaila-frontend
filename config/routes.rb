Rails.application.routes.draw do

  devise_for :users

  authenticated :user do
    root 'pages#landingpage9', as: :authenticated_root
  end

  root 'users#home'
  
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
