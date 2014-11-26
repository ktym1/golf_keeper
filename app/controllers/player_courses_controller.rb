class PlayerCoursesController < ApplicationController
  def index
  	@course = Course.all
  end

def show
  	@course = Course.all
  end
end
