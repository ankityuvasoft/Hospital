Rails.application.routes.draw do
 
  resources :people
  get 'posts/index'

  get 'images/index'

  get 'images/create'

  get 'photos/index'

  get 'registrations/index'

  get 'users/index'
  devise_for :hosts, :controllers => { omniauth_callbacks: 'hosts/omniauth_callbacks' }
  # devise_for :hosts
  # devise_for :hosts, controllers: { confirmations: 'confirmations',:omniauth_callbacks => "hosts/omniauth_callbacks" }
  # devise_for :hosts, :controllers => { :omniauth_callbacks => "hosts/omniauth_callbacks" }
  # devise_for :hosts ,:controllers => { :registrations => "registrations" }
  get 'accounts/index'

  get 'users/index'

  get 'entries/index'

  get 'appointments/index'

  get 'doctors/index'

  get 'patients/index'

  get 'welcome/index'

  get 'hosts/session'

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
      resources :articles
      resources :posts
      resources :patients
      resources :doctors
      resources :appointments
      resources :entries
      resources :users do
        resources :accounts
      end
      resources :photos
      resources :images
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
