class RelationshipsController < ApplicationController

  def create
    follow = current_user.active_relationships.build(follower_id: params[:user_id])
    follow.save
    @user = follow.follower
    # redirect_back(fallback_location: user_path(current_user))
  end

  def destroy
    follow = current_user.active_relationships.find_by(follower_id: params[:user_id])
    follow.destroy
    @user = follow.follower
    # redirect_back(fallback_location: user_path(current_user))
  end

end
