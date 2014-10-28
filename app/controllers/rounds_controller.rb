class RoundsController < ApplicationController
  def new
    @player = Player.find(params[:player_id])
    @round = Round.new
    @courses = Course.all
  end

  def create
    @player = Player.find(params[:player_id])
    @round = Round.new(round_params)
    if @round.save
      redirect_to @player
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def round_params
    params.require(:round).permit(:course_id, :round_length, :player_id, :start_hole, :course)
  end
end
