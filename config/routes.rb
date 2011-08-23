Rails3::Application.routes.draw do

  resources :orders

#   device_for :users
#   devise_for :users, :path => "usuarios", 
#     :path_names => { :sign_in => 'login', :sign_out => 'logout', 
#                      :password => 'secret', :confirmation => 'verification', 
#                      :unlock => 'unblock', :registration => 'register', 
#                      :sign_up => 'cmon_let_me_in' }
#  devise_for :users, :controllers => { :sessions => "user_sessions" }
  
  devise_for :users, :controllers => { :sessions => "user_sessions" ,:registrations => "registrations" },	
    :path_names => { :sign_in => 'login', :sign_out => 'logout',  :registration => 'register',
                     :confirmation => 'confirmation' }

  # The priority is based upon order of creation:
  # first created -> highest priority.
  resources :profiles

  resources :users do
     member do
       get :edit_password 
       get :update_password
       get :edit_email
       put :update_email
       get :edit_avatar
       put :update_avatar
    end
  end

  resources :announcements
  
  # RESTful rewrites
  
  match  '/opensession' => "sessions#create", :as => "open_id_complete", :requirements => { :method => :get }
  match '/opencreate' => 'users#create',:as => :open_id_create,  :requirements => { :method => :get }
    
  
  # Administration
  namespace :admin do 
    root :to => 'dashboard#index'
    resources :settings 
    match '/settings/update_settings' => 'settings#update_settings',  :requirements => { :method => :post }
    resources :announcements
    resources :commits
    resources :quotes
    match '/users/search' => 'users#search',  :requirements => { :method => :get }
    resources :users do 
      member do 
        put :suspend
        put :unsuspend
        put :activate
        delete :purge
        put :reset_password
        get :set_user_login
        get :set_user_email        
      end
      collection do
        get :pending
        get :active
        get :suspended
        get :deleted
      end
    end
  end
  
  resources :page do
      collection do
        get :about
        get :activity
        get :certificates
        get :goodbye
        get :pilot_code
        get :policy
        get :price_table_1
        get :price_table_2
        get :prices
        get :welcome
        get :contact_us
        put :new_question
    end
  end
  resources :browser

  # следващите дефиниции предоставят welcome_path, certificates_path, ...
  match  '/upgrade-your-browser' => "browser#index", :as => "upgrade_your_browser", :requirements => { :method => :get }
  match  '/welcome' => "page#welcome", :as => "welcome", :requirements => { :method => :get }
  match  '/prices' => "page#prices", :as => "prices", :requirements => { :method => :get }
  match  '/policy' => "page#policy", :as => "policy", :requirements => { :method => :get }
  match  '/certificates' => "page#certificates", :as => "certificates", :requirements => { :method => :get }
  match  '/activity' => "page#activity", :as => "activity", :requirements => { :method => :get }
  match  '/pilot-code' => "page#pilot_code", :as => "pilot_code", :requirements => { :method => :get }
  match  '/prices-varna' => "page#price_table_1", :as => "price_table_1", :requirements => { :method => :get }
  match  '/prices-burgas' => "page#price_table_2", :as => "price_table_2", :requirements => { :method => :get }
  match  '/contact-us' => "page#contact_us", :as => "contact_us", :requirements => { :method => :get }
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
  # root :to => "welcome#index"
  root :to => "page#welcome"
  
  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
