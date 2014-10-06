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

	private
		def hole_params
			params.require(:hole).permit(:course_id, :par)
		end
end
