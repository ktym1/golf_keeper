class HolesController < ApplicationController
	def show
		@hole = Hole.find(params[:id])
	end

	def create
		@course = Course.find(params[:course_id])

		@hole = @course.holes.create(holes_params)
		if @holes.save
			redirect_to course_path(@course), notice: "Hole created successfully"
		else
			render "courses/show"
		end
	end

	def edit
		@hole = Hole.find(params[:id])
	end

	def update
		@hole = Hole.find(params[:id])
		if @hole.update(hole_params)
			redirect_to course_index_url(@course)
		else
			render :edit
		end

	end

	private
		def hole_params
			params.require(:hole).permit(:course_id, :par, :hole_number, :handicap_rating, :gender)
		end
end
