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
  get '/admin/settings' => 'admins#settings', :as => :admin_settings
  post '/admin/settings' => 'admins#settings'
  put '/admin/update_settings' => 'admins#update_settings'

  # - products - #
  get '/admin/products' => 'products#index'
  get '/admin/products/new' => 'products#new'
  post '/admin/products' => 'products#create'
  get '/admin/products/:id/edit' => 'products#edit', :as => :admin_products_edit
  get '/admin/products/:id' => 'products#show', :as => :admin_product
  put '/admin/products/:id' => 'products#update'
  delete '/admin/products/:id' => 'products#destroy', :as => :admin_product_delete

  # - orders - #
  get '/admin/orders' => 'orders#index', :as => :admin_orders
  get '/admin/orders/:id' => 'orders#show', :as => :admin_order

  # - customers - #
  # get '/admin/customers' => 'customers#index', :as => :admin_customers
  # post '/admin/customers' => 'customers#create', :as => :admin_customer

  # - stores - #
  post '/stores/:id' => 'stores#shopfront'
  get '/stores/:id' => 'stores#shopfront', :as => :store
  get '/products' => 'stores#products', :as => :store_product
  get '/guest' => 'stores#create_guest'
  post '/guest' => 'stores#create_guest'
  get '/orders' => 'stores#confirm_checkout'
  post '/orders' => 'stores#confirm_checkout'


  # put '/cart/:id' => 'stores#cart'

end
