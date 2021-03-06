Cusxp::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'sign_up' => 'users#new', :as => 'sign_up'
  get 'sign_in' => 'sessions#new', :as => 'sign_in'
  match '/sign_out', to: 'sessions#destroy', via: 'delete'

  get 'welcome/index'
  root to: 'welcome#index'

  match '/organization', to: 'static_pages#organization', via: 'get'
  match '/customer', to: 'static_pages#customer', via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'

  match '/new_subscription', to: 'subscriptions#create', via: 'post'
  match '/thanks', to: 'subscriptions#thanks', via: 'get'
  match '/view_subscriptions', to: 'subscription_results#index', via: 'get'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
