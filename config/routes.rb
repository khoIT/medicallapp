Medicallapp::Application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root to: 'physician#index'
  get 'home' => 'physician#index'
  get 'medicine' => 'medicine#drug_list'
  get 'medicine/:id' => 'medicine#drug_indication', as: 'show_indication'
  get 'medicine/:id/education' => 'medicine#drug_education', as: 'show_education'
  post 'indication/:id' => 'indication#choose_indication'
  post 'medicine/:id/final_indication' => 'medicine#drug_final_indication', as: 'show_final_indication'


  get 'show_import' => 'medicine#show_import'
  get 'import' => 'medicine#import'
   resources :medicine do
     collection { post :import }
     #post 'choose_indication' => 'medicine#choose_indication'
   end

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
