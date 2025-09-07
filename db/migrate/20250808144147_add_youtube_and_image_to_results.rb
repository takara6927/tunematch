class AddYoutubeAndImageToResults < ActiveRecord::Migration[7.2]
  def change
    add_column :results, :youtube_url, :string
    add_column :results, :image_url, :string
  end
end
