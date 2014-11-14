class ScoresController < ApplicationController
	# def new
	# 	@score = Score.new
	# end

	# def create
 #     @round = Round.find(params[:round_id])
 #     @score = @round.scores.build(score_params)
 #      if @score.save
 #      	redirect_to player_round_url(@round.player, @round)
 #      else
 #        render :new
 #      end
		# end
	
	def edit
		@score = Score.find(params[:id])
	end

	def update
		@score = Score.find(params[:id])
		if @score.update(score_params)
			redirect_to player_round_url(@score.player, @score.round)
		else
			render :edit
		end
	end


	private

	def score_params
		params.require(:score).permit(:hole_id, :round_id, :score)
	end
end
