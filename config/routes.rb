Rails.application.routes.draw do

  get 'player_courses/index' => "player_courses#index"

  get 'player_courses/:course_id' => "player_courses#show"

  resources :home, only: [:index]
  root :to => "home#index"
  
  resources :courses do
    resources :holes
  end
  
  resources :players do
    resources :matches do
      resources :challenges
    end
  end

  # resources :challenges do
  #   get :autocomplete_player_username, :on => :collection
  # end
  resources :players do
    resources :rounds do
      resources :scores
    end
    get 'courses' => 'player_courses#index'
    get 'courses/:id' => 'player_courses#show'
  end

  resources :sessions, only: [:new, :create, :destroy]
  match 'signup',  to: 'players#new', via: 'get'
  match '/signin', to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'

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
