Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  devise_for :users

  resources :homepages, :categories
	  resources :books do
	  	resources :comments
	  end
  
  root 'homepages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
