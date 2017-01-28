Rails.application.routes.draw do
		# routes
		# HTTP VERBS: get, post, put, patch, delete
		# verb 'url/path'

	# SHOW routes
	  get 'students' => 'students#index'

	  get 'students/:id' => 'students#show', as: 'student', id: /\d+/

	  # CREATE routes
	  get 'student/new' => 'students#new', as: 'new_student'

	  post 'students' => 'students#create'

	  # UPDATE Routes
	  get 'students/:id/edit' => 'students#edit', as: 'edit_student', id: /\d+/
	  patch 'students/:id' 	  => 'students#update'

	  root to: 'students#index'

	  
end
