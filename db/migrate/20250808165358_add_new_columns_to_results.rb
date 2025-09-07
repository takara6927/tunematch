class AddNewColumnsToResults < ActiveRecord::Migration[7.2]
  def change
    add_column :results, :song1, :string
    add_column :results, :youtube_url1, :string
    add_column :results, :artist2, :string
    add_column :results, :song2, :string
    add_column :results, :youtube_url2, :string
  end
end
