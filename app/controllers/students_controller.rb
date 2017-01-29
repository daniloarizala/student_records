class StudentsController < ApplicationController
	def index
  		@students = Student.order(:name)
	end

	def show
  		@student = find_student
	end

	private
  	
  	def find_student
  		@student = Student.find(params[:id])
  	end

end
