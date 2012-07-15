Guitartistas::Application.routes.draw do  

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'pages#home'

  match 'biographies/:slug' => 'biographies#show'
  match 'performances'      => 'events#index'
  match 'contact'           => 'pages#contact'
end