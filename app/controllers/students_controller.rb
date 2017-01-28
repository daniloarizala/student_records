class StudentsController < ApplicationController
	def index
  		@students = Student.order(:name)
	end

	def show
  		@student = find_student
	end

	def new
  		@student = Student.new
	end

	def create
  		@student = Student.new(student_params)

		if @student.save # If the validation pass
  			redirect_to @student

  	 	else
  	 		render :new 
  		end
	end

	def edit
		@student = find_student
	end

	def update
		@student = find_student

		if @student.update(student_params)
			redirect_to @student 
		else
			render :edit
		end
	end

	private
  	
  	def find_student
  		@student = Student.find(params[:id])
  	end

	def student_params
      params.require(:student).permit(:name)
    end
end
