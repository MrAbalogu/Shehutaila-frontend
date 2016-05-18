Rails.application.routes.draw do

  get 'p/signup'
  get 'p/firstbooking'
  get 'p/bookingform'
  get 'p/formwithmodal'
  get 'p/currentstatus'
  get 'p/styleexamplemodal'
  get 'p/orderlist'

  get 'pages/landingpage'
  get '/dashboard' => "pages#landingpage9"
  get '/signup' => "pages#landingpage10"
  get '/signin' => "pages#signin"
  get '/frontpage' => "pages#landingpage11"
  get '/details' => "pages#landingpage8"
  get '/search' => "pages#landingpage5"
  get '/searchexample' => "pages#landingpage2"
  get '/status' => "pages#landingpage3"
  get 'pages/lp2'
  get 'pages/playground'

  get '/admin' => "posts#admin"

  root 'pages#progress'

end
