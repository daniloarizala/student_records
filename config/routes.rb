Rails.application.routes.draw do
		# routes
		# HTTP VERBS: get, post, put, patch, delete
		# verb 'url/path'

	# SHOW routes
	  get 'students' => 'students#index'

	  get 'students/:id' => 'students#show', as: 'student', id: /\d+/


	  get 'student/new' => 'students#new', as: 'new_student'

	  
	# CREATE routes
	  post 'students' => 'students#create'

	  root to: 'students#index'

end
