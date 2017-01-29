Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
		# routes
		# HTTP VERBS: get, post, put, patch, delete
		# verb 'url/path'

	# SHOW routes
	  get 'students' => 'students#index'

	  get 'students/:id' => 'students#show', as: 'student', id: /\d+/

	  
	  root to: 'students#index'

	  
end
