class RemoveOldYoutubeUrlFromResults < ActiveRecord::Migration[7.2]
  def change
    remove_column :results, :youtube_url, :string
  end
end
