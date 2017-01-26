Rails.application.routes.draw do
	# routes
	# HTTP VERBS: get, post, put, patch, delete
	# verb 'url/path'

  get 'students' => 'students#index'

  get 'students/:id' => 'students#show', as: 'student', id: /\d+/



end
