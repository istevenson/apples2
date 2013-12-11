Applestoo::Application.routes.draw do
  # devise_for :players
  devise_for :players, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout', :sign_up => 'signup'}
  # devise_for :players, :controllers => {:sessions => 'devise/sessions'}, :skip => [:sessions] do
  #   get 'login' => 'devise/sessions#new', :as => :new_player_session
  #   post 'login' => 'devise/sessions#create', :as => :player_session
  #   get 'logout' => 'devise/sessions#destroy', :as => :destroy_player_session
  #   get 'register' => 'devise/registrations#new', :as => :new_player_registration
  # end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  root 'home#index'



  get '/join' => 'players#show'
  post '/join' => 'players#show'
  resources :rounds
  # get '/join' => 'games#create'
  # get '/chooser/:secret_id' =>
  # get '/player/:secret_id' => 'games#show'
  # get '/games/:secret_id' => 'games#show'

  # get '/games/:secret_id', to: 'games#create'
  # post '/games/:secret_id', to: 'games#create'
  # get '/games', to: 'games#show', as: :new_game
  get '/chooser/:secret_id', to: 'games#chooser', as: :chooser
  post '/chooser/:secret_id', to: 'games#chooser'

  get '/player/:secret_id', to: 'games#game_player', as: :player
  post '/player/:secret_id', to: 'games#game_player'


  # resources :games
  # resources :green_cards

  # get '/game/:secret_id' => 'games#show'
  # get '/game/:secret_id' => 'games#join'
  # post '/game/:secret_id' => 'games#update'

  if Rails.env.production?
   get '404', :to => 'home#index'
  end

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
