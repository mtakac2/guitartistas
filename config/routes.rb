Guitartistas::Application.routes.draw do  

  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'pages#home'

  match 'biographies'       => 'biographies#index'
  match 'biographies/:slug' => 'biographies#index'
  match 'events'            => 'events#index'
  match 'contact'           => 'pages#contact'
end