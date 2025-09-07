class AddArtistAndTitleToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :artist, :string
    add_column :tweets, :title, :string
  end
end
