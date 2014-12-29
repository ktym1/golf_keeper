class MatchesController < ApplicationController

def new
	@player = Player.find(params[:player_id])
	@match = Match.new
	@courses = Course.all
	@tees = Tee.all
end

def create
	@player = Player.find(params[:player_id])
	@match = @player.created_matches.create(match_params)
	if @match.save
		redirect_to player_match_url(@player, @match)
	else
		render :new
	end
end

def show
	@match = Match.find(params[:id])
	@player = Player.find(params[:player_id])
	@players = Player.all
	@challenge = Challenge.new
end

	private
	def match_params
		params.require(:match).permit(:course_id, :player_id, :tee_id, :end_date)
	end

end
