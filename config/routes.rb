Rails.application.routes.draw do


  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
	get "insurance" => "insurance#home"
	namespace :insurance do 
		get "auto"
		get "commercial"
		get "life" 
		get "health" 
		get "motorcycle"
		get "flood" 
		get "boat"
		get "condo"
		get "renters" 
		get "landlord" 
		get "jewelry"
	end 

	get "quote" => 'quote#index'

	get "whoweare" => 'whoweare#index'
			
	get 'welcome/index'
	root 'welcome#index'

	resources :quotes, only: [:create]
end
