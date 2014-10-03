class HolesController < ApplicationController
	def show
		@hole = Hole.find(params[:id])
	end

end
