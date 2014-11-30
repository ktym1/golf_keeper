class HolesController < ApplicationController

	before_filter :ensure_admin, only: [:create, :edit, :update, :destroy]

	def show
		@hole = Hole.find(params[:id])
	end

	def create
		@course = Course.find(params[:course_id])

		@hole = @course.holes.create(hole_params)
		if @holes.save
			redirect_to course_path(@course), notice: "Hole created successfully"
		else
			render "courses/show"
		end
	end

	def edit 
		@course = Course.find(params[:course_id])
		@hole = Hole.find(params[:id])
		@tees = Tee.all
		@yardages = @hole.yardages
		if @yardages.blank?
			@course.tees.each do |tee|
				@hole.yardages.build(tee_id: tee.id)
			end
		end
	end

	def update
		@course = Course.find(params[:course_id])
		@hole = Hole.find(params[:id])
		if @hole.update_attributes(hole_params)
			flash[:success] = "Hole updated"
			redirect_to course_url(@course)
		else
			render :edit
		end

	end

	private
		def hole_params
			params.require(:hole).permit(:course_id, :par, :hole_number, :handicap_rating, :gender, :tee_id, yardages_attributes:[:id, :hole_id, :tee_id, :yards, :_destroy])
		end
end
