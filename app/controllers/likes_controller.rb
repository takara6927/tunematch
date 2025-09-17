class LikesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_tweet

  def create
    current_user.likes.find_or_create_by!(tweet: @tweet)
    redirect_back fallback_location: tweets_path
  end

  def destroy
    like = current_user.likes.find(params[:id]) 
    like.destroy
    redirect_back fallback_location: tweets_path
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:tweet_id])
  end
end

