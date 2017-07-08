Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users

  resources :homepages, :categories, :books
  
  root 'homepages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
