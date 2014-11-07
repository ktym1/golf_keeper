class ScoresController < ApplicationController
	def new
		@score = Score.new
		@player = Player.find(params[:player_id])
		@round = Round.find(params[:round_id])

	end

	def create
	 @player = Player.find(params[:player_id])
     @round = Round.find(params[:round_id])
     @score = @round.scores.build(params[:score_params])
      if @score.save
      	redirect_to player_round_url(@player,@round)
      else
        render :new
      end
	end
	
	def edit
		@score = Score.find(params[:id])
	end

	private

	def score_params
		params.require(:score).permit(:hole_id, :round_id, :score)
	end
end
