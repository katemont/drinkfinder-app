class FriendshipsController < ApplicationController

  def create
    @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    if @friendship.save
      flash[:notice] = "Friend added!"
      redirect_to current_user
    else
      flash[:error] = "Unable to add friend. Try again later"
      redirect_to root_url
    end
  end

  def destroy
    @friendship = current_user.friendships.find(params[:id])
    @friendship.destroy
    flash[:notice] = "Friendship has been removed."
    redirect_to current_user
  end
end