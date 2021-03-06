Siga::Application.routes.draw do
  resources :cashes

  resources :date_cashes

  resources :historical_cashes
  
  resources :posts
  
  resources :reports

  get "home/index"

  resources :users
  match "show_password" => "users#show_password"
  match "update_password" => "users#update_password"
  
  resources :rel_adm
  match "rel_user" => "rel_adm#rel_user"
  match "rel_user_show" => "rel_adm#rel_user_show"
  
  resources :rel_cxa
  match "rel_historical_cash" => "rel_cxa#rel_historical_cash"
  match "rel_historical_cash_show" => "rel_cxa#rel_historical_cash_show"
  match "rel_mov_cash" => "rel_cxa#rel_mov_cash"

  get "home/index"
  get "menuADM" => "home#menuADM", :as => "menuADM"
  get "menuGER" => "home#menuGER", :as => "menuGER"
  get "menuOPR" => "home#menuOPR", :as => "menuOPR"
  get "menuEST" => "home#menuEST", :as => "menuEST"
  get "menuCXA" => "home#menuCXA", :as => "menuCXA"
  get "menuPAG" => "home#menuPAG", :as => "menuPAG"
  get "menuREC" => "home#menuREC", :as => "menuREC"

  resources :sessions
  get "login" => "sessions#new", :as => "login"
  get "logout" => "sessions#destroy", :as => "logout"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
   root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
