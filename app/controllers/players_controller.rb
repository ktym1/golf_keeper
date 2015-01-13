class PlayersController < ApplicationController
 before_action :signed_in_player, only: [:edit, :update]
 before_action :correct_player, only: [:edit, :update]
 before_action :get_player, :only => [:show, :edit, :update]
  
  def get_player
    begin
      @player = Player.find(params[:id])
    rescue
      render 'shared/not_found'
    end
  end

  def new
  	@player = Player.new
  end

  def create
  	@player = Player.new(player_params)
  	if @player.save
      sign_in @player
      flash[:success] = "Welcome to Golf Keeper"
  		redirect_to @player
  	else
  		render 'new'
  	end
  end  

  def update
    remove_password
    if @player.update_attributes(player_params)
      flash[:success] = "Profile updated"
      redirect_to @player
    else
      render "edit"
    end
  end

  def show
  end
  
  def edit
  end
  
    private
      def remove_password
        if player_params[:password].blank?
           player_params.delete("password")
           player_params.delete("password_confirmation")
        end
      end

      def destroy
        #how to consider admin rights for deletion
      end
   
      def player_params
      	params.require(:player).permit(:email, :username, :password, :password_confirmation, :handicap_index, :gender, :avatar)
      end

      def signed_in_player
          unless signed_in?
          store_location
          redirect_to signin_url, notice: "Please sign in."
          end    
      end

      def correct_player
        @player = Player.find(params[:id])
        redirect_to(root_url) unless current_user?(@player)
      end
end
