 Rails.application.routes.draw do
                           
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
   devise_for :users
   get '/companies/editarea' => 'companies#editarea', :as => 'editarea'
   post '/companies/editarea' => 'companies#updatearea', :as => 'updatearea'
   resources :companies
   #root :to => redirect('/companies')
   root :to => "companies#index"
   get 'company/:id/remove_scheda_condizioni', to: 'companies#remove_scheda_condizioni', as: 'remove_company_scheda_condizioni'
   get 'company/:id/remove_questionari', to: 'companies#remove_questionari', as: 'remove_company_questionari'
   get 'company/:id/remove_brochure', to: 'companies#remove_brochure', as: 'remove_company_brochure'
   get 'company/:id/remove_nota_informativa', to: 'companies#remove_nota_informativa', as: 'remove_company_nota_informativa'
end
