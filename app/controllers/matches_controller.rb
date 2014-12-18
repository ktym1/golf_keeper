class MatchesController < ApplicationController
def new
	@player = Player.find(params[:player_id])
	@match = Match.new
	@courses = Course.all
	@tees = Tee.all
end

def create
	@match = Match.new(match_params)
	if @match.save
		redirect_to player_match_url 
	else
		render :new
	end
end

def show
	@match = Match.find(params[:id])
end

	private
	def match_params
		params.require(:match).permit(:course_id, :player_id, :tee_id, :end_date)
	end

end
