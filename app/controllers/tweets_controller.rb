class TweetsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  def index
    if params[:tag].present?
      Tag.find_or_create_by!(name: params[:tag].to_s.strip)
      redirect_to tweets_path and return
    end


    scope = Tweet.includes(:user, :tags).order(created_at: :desc)

    raw_tag_ids = params[:tag_ids]
    @selected_tag_ids =
      if raw_tag_ids.is_a?(Hash)
        raw_tag_ids.select { |_k, v| v == "1" }.keys.map!(&:to_i)
      else
        Array(raw_tag_ids).map!(&:to_i)
      end.uniq

    if @selected_tag_ids.present?
      scope = scope.joins(:tweet_tag_relations)
                   .where(tweet_tag_relations: { tag_id: @selected_tag_ids })
                   .group("tweets.id")
                   .having("COUNT(DISTINCT tweet_tag_relations.tag_id) = ?", @selected_tag_ids.size)
    end


    @q = params[:search].to_s.strip
    scope = scope.where("tweets.body LIKE ?", "%#{@q}%") if @q.present?


    @tweets   = scope.page(params[:page]).per(10)
    @all_tags = Tag.order(:name)
  end

  def new
    @tweet = Tweet.new
    @all_tags = Tag.order(:name)
  end


  def create
    @tweet = Tweet.new(tweet_params.merge(user_id: current_user.id))
    if @tweet.save
      redirect_to tweets_path, notice: "投稿しました"
    else
      @all_tags = Tag.order(:name)
      flash.now[:alert] = "投稿に失敗しました"
      render :new, status: :unprocessable_entity
    end
  end


  def show
    @tweet = Tweet.find(params[:id])
  end


  def edit
    @tweet = Tweet.find(params[:id])
    @all_tags = Tag.order(:name)
  end


  def update
    @tweet = Tweet.find(params[:id])
    if @tweet.update(tweet_params)
      redirect_to tweet_path(@tweet), notice: "更新しました"
    else
      @all_tags = Tag.order(:name)
      flash.now[:alert] = "更新に失敗しました"
      render :edit, status: :unprocessable_entity
    end
  end


  def destroy
    tweet = Tweet.find(params[:id])
    tweet.destroy
    redirect_to tweets_path, notice: "削除しました"
  end

  private

  def tweet_params
    params.require(:tweet).permit(:artist, :title, :body, tag_ids: [])
  end
end
