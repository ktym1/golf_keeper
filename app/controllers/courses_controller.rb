class CoursesController < ApplicationController

	before_filter :ensure_admin, only: [:new, :create, :edit, :update, :destroy]

	def index
		@courses = Course.all
	end

	def new
		@course = Course.new
	end

	def create
		@course = Course.new(course_params)
		@tees = Tee.all
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
		@tees = Tee.all
	end

	def destroy
		@course = Course.find(params[:id])
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
		params.require(:course).permit(:name, :handicap_course, :course_length, tees_attributes:[:id, :colour, :_destroy])
	end
end
