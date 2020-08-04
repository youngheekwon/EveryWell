class FriendshipsController < ApplicationController

  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])

    if @friendship.save
      flash[:notice] = "Added Friend"
      redirect_to users_path
    else
      flash[:error] = "Unable to add friend"
      redirect_to users_path
    end
  end


  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Removed friendship"
    redirect_to current_user
  end

  private 
  def friendship_params
    params.require(:friendship).permit(:user_id, :friend_id)
  end
end
