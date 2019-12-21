Rails.application.routes.draw do

	root 'campaigns#index'
  resources :messages
  resources :campaigns
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
