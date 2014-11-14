class ScoresController < ApplicationController
	before_action :get_score, :only => [:edit, :update]
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

	def get_score
		begin
			@score = Score.find(params[:id])
		rescue
			render 'shared/not_found'
		end
	end

	def update
		if @score.update(score_params)
			redirect_to player_round_url(@score.player, @score.round)
		else
			render :edit
		end
	end

	def edit
	end

	private

		def score_params
			params.require(:score).permit(:hole_id, :round_id, :score)
		end
end
