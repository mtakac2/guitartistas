Guitartistas::Application.routes.draw do  

  get "videos/index"

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'pages#home'

  match 'biographies'                   => 'biographies#index'
  match 'biographies/:slug'             => 'biographies#index'
  match 'events'                        => 'events#index'
  match 'multimedia/gallery'            => 'albums#index'
  match 'multimedia/gallery/albums/:id' => 'albums#show'
  match 'multimedia/videos'             => 'videos#index'  
  match 'contact'                       => 'emails#new'
  match 'emails/create'                  => 'emails#create', :via => :post
end