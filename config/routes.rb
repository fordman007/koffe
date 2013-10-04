Koffe::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  resources :products do

    resource :basket

  end

  #single session user can only login and logout onece

  resource :session
  get "/auth/:provider/callback", to: "sessions#create"
  # eg get "/about", to: "content#about"

  resources :orders

  root "products#index"

end
