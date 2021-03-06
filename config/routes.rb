Rails.application.routes.draw do
  resources :entries
  resources :questions
  resources :contests
  devise_for :admin_users, {class_name: 'User'}.merge(ActiveAdmin::Devise.config)
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { registrations: 'users/registrations' }
  root to: "application#index"
end
