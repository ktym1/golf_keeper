class RoundsController < ApplicationController
  def new
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
end
