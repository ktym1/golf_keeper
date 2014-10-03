class CoursesController < ApplicationController

	def index
		@courses = Course.all
	end

	def new
		@course = Course.new
	end

	def create
		@course = Course.new(course_params)
		if @course.save
			redirect_to courses_url
		else
			render :new
		end
	end

	def show 
		@course = Course.find(params[:id])
	end

	def edit
		@course = Course.find(params[:id])
	end

	def delete
		@course.destroy
		redirect_to courses_url
	end

	def update
		@course = Course.find(params[:id])
		if @course.update_attributes(course_params)
			redirect_to @course
		else
			render :edit
		end
	end
	
	private
	def course_params
		params.require(:course).permit(:name)
	end
end
