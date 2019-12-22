Rails.application.routes.draw do

  get 'static_pages/home', as: "homepage"
  get 'static_pages/about', as: "aboutpage"
	root 'static_pages#home'
  resources :messages
  resources :campaigns
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
