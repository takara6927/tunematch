class UsersController < ApplicationController
def show
  @user = User.find(params[:id])
  if user_signed_in? && current_user.id == @user.id
    @diagnoses       = @user.diagnoses.order(created_at: :desc).limit(5) 
    @diagnoses_total = @user.diagnoses.count
  end

  @tab = params[:tab].presence_in(%w[posts likes]) || "posts"

  base_scope =
    case @tab
    when "likes"
      @user.liked_tweets.includes(:user, :tags)
    else
      @user.tweets.includes(:user, :tags)
    end

  @tweets = base_scope.order(created_at: :desc).page(params[:page]).per(10)


  @stats = {
    posts_count: @user.tweets.count,
    likes_given: @user.likes.count,
    likes_received: Like.joins(:tweet).where(tweets: { user_id: @user.id }).count,
    joined_on: @user.created_at
  }

  @top_tags = @user.tweets.joins(:tags)
                  .group("tags.name").order(Arel.sql("COUNT(*) DESC"))
                  .limit(10).count
end
private
def user_params
  params.require(:user).permit(:name, :profile, :image)
end
end