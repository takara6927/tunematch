class TweetsController < ApplicationController
  before_action :set_tweet, only: [:show, :edit, :update, :destroy]
  before_action :set_all_tags, only: [:new, :create, :edit, :update]
  def index
    @q = params[:search].to_s.strip
    @selected_tag_ids = Array(params[:tag_ids]).reject(&:blank?).map!(&:to_i)
    @all_tags = Tag.order(:name)

    @tweets = Tweet.includes(:user, :tags).order(created_at: :desc)

    if @q.present?
      adapter = ActiveRecord::Base.connection.adapter_name.downcase
      if adapter.include?("postgres")
        @tweets = @tweets.where(
          "artist ILIKE :q OR title ILIKE :q OR body ILIKE :q",
          q: "%#{@q}%"
        )
      else
        q = "%#{@q.downcase}%"
        @tweets = @tweets.where(
          "LOWER(artist) LIKE :q OR LOWER(title) LIKE :q OR LOWER(body) LIKE :q",
          q: q
        )
      end
    end

    if @selected_tag_ids.present?
      @tweets = @tweets.joins(:tags).where(tags: { id: @selected_tag_ids }).distinct
    end


    @tweets = @tweets.page(params[:page]) if @tweets.respond_to?(:page)
  end

  def show; end
  def new; @tweet = Tweet.new; end
  def edit; end

  def create
    @tweet = current_user.tweets.build(tweet_params)
    if @tweet.save
      redirect_to @tweet, notice: "投稿しました"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @tweet.update(tweet_params)
      redirect_to @tweet, notice: "更新しました"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @tweet.destroy
    redirect_to tweets_url, notice: "削除しました"
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end

  def set_all_tags
    @all_tags = Tag.all
  end
  def tweet_params
    params.require(:tweet).permit(:artist, :title, :body, :youtube_url, tag_ids: [])
  end
end
