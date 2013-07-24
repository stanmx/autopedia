Autopedia::Application.routes.draw do

  resources :banners

  devise_for :users, :path => 'users', :path_names => { :sign_in => 'login', :sign_out => 'logout'}

  root :to => 'pages#inicio'

  get "controls/" => 'controls#index'

  match '/pages/inicio' => 'pages#inicio', :as => 'inicio', :via => :get
  match '/pages/inicio' => 'pages#inicio_send', :as => 'inicio', :via => :post

  get "/pages/inicio" => 'pages#inicio', :as => :page, :format => false
 
  match "/pages/autos_en_venta" => 'pages#autos_en_venta', :as => 'autos_en_venta', :via => :get
  match "/pages/autos_en_venta" => 'pages#autos_en_venta_send', :as => 'autos_en_venta', :via => :post

  match "/pages/autos_en_venta/:id" => 'pages#auto', :as => :page, :via => :get
  match "/pages/autos_en_venta/:id" => 'pages#auto_send', :as => :page, :via => :post
 
  get "/pages/directorio" => 'pages#directorio', :as => :page, :format => false
  get "/pages/directorio/:id" => 'pages#negocio', :as => :page, :format => false
 
  get "/pages/revista" => 'pages#revista', :as => :page, :format => false
 
  get "/pages/tv" => 'pages#tv', :as => :page, :format => false
  get "/pages/episodio/:id" => 'pages#episodio', :as => :page, :format => false
 
  match '/pages/certificate' => 'pages#certificate', :as => 'certificate', :via => :get
  match '/pages/certificate' => 'pages#certification_send', :as => 'certificate', :via => :post
 
  match '/pages/contacto' => 'pages#contacto', :as => 'contacto', :via => :get
  match '/pages/contacto' => 'pages#create', :as => 'contacto', :via => :post
 
  get "/pages/ubicacion" => 'pages#ubicacion', :as => :page, :format => false
  get "/pages/poliza_de_legalidad" => 'pages#poliza_de_legalidad', :as => :page, :format => false
  get "/pages/acerca_de_nosotros" => 'pages#acerca_de_nosotros', :as => :page, :format => false
  get "/pages/publicidad" => 'pages#publicidad', :as => :page, :format => false

  resources :videos
  resources :magazines
  resources :companies
  resources :categories
  resources :cars
  resources :cities
  resources :states
  resources :countries
  resources :models
  resources :brands


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
