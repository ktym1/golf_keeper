class RoundsController < ApplicationController
  def new
    @player = Player.find(params[:id])
    @round = Round.new
    @course_options = Course.all.map{|c| [c.name, c.id]}
  end

  def create
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
