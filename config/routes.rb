Rails.application.routes.draw do
  get 'pages/yamapi'
  post 'pages/yamapi'
  
  #get 'pages/yamembed.html.erb'
 #http://stackoverflow.com/questions/4479233/static-pages-in-ruby-on-rails
  match '/embed' => 'pages#yamembed',  via: [:get, :post]
  match '/api' => 'pages#yamapi',  via: [:get, :post]
  match '/ng' => 'pages#ng',  via: [:get, :post]
  match '/list' => 'pages#list_jedis',  via: [:get, :post]
   match '/apifeed' => 'pages#apifeed',  via: [:get, :post]


  #get 'users', to 'users#sign_in'
  
  #get 'pages', to: 'pages#yamapi'

  devise_for :users
  resources :jedis

  get 'welcome/index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
