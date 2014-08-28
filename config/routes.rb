Rails.application.routes.draw do
  root :to => 'pages#index'

  # - session routes, log in/out - #
  get '/login' => 'sessions#login'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#logout'

  # - multi-step sign-up routes - #
  post '/' => 'admins#account_create'
  get '/admin/account_setup' => 'admins#account_setup'
  post '/admin/account_setup' => 'admins#account_complete'

  # - store management routes - #
  get '/admin' => 'admins#dashboard'
  post '/admin' => 'admins#dashboard'
  get '/admin/add-staff' => 'admins#add_staff'
  post '/admin/add-staff' => 'admins#post_added_staff'

  # - products - #
  get '/admin/products' => 'products#index'
  get '/admin/products/new' => 'products#new'
  post '/admin/products' => 'products#create'
  get '/admin/products/:id/edit' => 'products#edit', :as => :admin_products_edit
  get '/admin/products/:id' => 'products#show', :as => :admin_product
  put '/admin/products/:id' => 'products#update'
  delete '/admin/products/:id' => 'products#destroy', :as => :admin_product_delete

  # - stores - #
  post '/stores/:id' => 'stores#shopfront'
  get '/stores/:id' => 'stores#shopfront', :as => :store

end
