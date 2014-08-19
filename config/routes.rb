Rails.application.routes.draw do
  root :to => 'pages#index'

  # session routes, log in/out
  get '/login' => 'sessions#login'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#logout'

  # multi-step sign-up routes
  post '/' => 'admins#step_1'
  get '/admin/account_setup' => 'admins#step_2'
  post '/admin/account_setup' => 'admins#step_3'

  # store admin routes
  get '/admin' => 'dashboards#index'

end
