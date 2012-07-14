Guitartistas::Application.routes.draw do
  ActiveAdmin.routes(self)

  devise_for :admin_users, ActiveAdmin::Devise.config

  root :to => 'pages#home'

  match 'contact' => 'pages#contact'
end