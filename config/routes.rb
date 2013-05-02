AdhesionsIfjr::Application.routes.draw do
  resources :adhesions do
    collection do
      get "mes_adhesions", :to => "adhesions#mes_adhesions"
      get "rechercher_adherent", :to => "adhesions#acces_recherche_adherent"
      post "rechercher_adherent", :to => "adhesions#rechercher_adherent"
    end
  end


  resources :type_adhesions

  resources :periode_adhesions

  resources :structures

  resources :individus

  match "/individus/:individu_id/adhesions" => "adhesions#individu_adhesions", :via => :get, :as => :individu_adhesions
  match "/individus/:individu_id/adhesions" => "adhesions#create_individu_adhesions", :via => :post, :as => :individu_adhesions
  match "/individus/:individu_id/adhesions/new" => "adhesions#new_individu_adhesions", :via => :get, :as => :new_individu_adhesions
  match "/individus/:individu_id/adhesions/:id/edit" => "adhesions#edit_individu_adhesion", :via => :get, :as => :edit_individu_adhesion
  match "/individus/:individu_id/adhesions/:id" => "adhesions#show_individu_adhesion", :via => :get, :as => :individu_adhesion
  match "/individus/:individu_id/adhesions/:id" => "adhesions#update_individu_adhesion", :via => :put, :as => :individu_adhesion
  match "/individus/:individu_id/adhesions/:id" => "adhesions#delete_individu_adhesion", :via => :delete, :as => :individu_adhesion

#               individu_adhesions GET    /individus/:individu_id/adhesions(.:format)          adhesions#index
#                                  POST   /individus/:individu_id/adhesions(.:format)          adhesions#create
#            new_individu_adhesion GET    /individus/:individu_id/adhesions/new(.:format)      adhesions#new
#           edit_individu_adhesion GET    /individus/:individu_id/adhesions/:id/edit(.:format) adhesions#edit
#                individu_adhesion GET    /individus/:individu_id/adhesions/:id(.:format)      adhesions#show
#                                  PUT    /individus/:individu_id/adhesions/:id(.:format)      adhesions#update
#                                  DELETE /individus/:individu_id/adhesions/:id(.:format)      adhesions#destroy
#  resources :individus do
#     resources :adhesions
#  end

  devise_for :comptes do
    get "comptes/verifier", :to => "comptes#verifier"
    get "comptes/mes_infos", :to => "comptes#mes_infos"
    get "comptes/infos_particulier", :to => "comptes#remplir_infos_individu"
    post "comptes/infos_particulier", :to => "comptes#valider_infos_individu"
    get "comptes/infos_personne_morale", :to => "comptes#remplir_infos_structure"
    post "comptes/infos_personne_morale", :to => "comptes#valider_infos_structure"
  end

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
