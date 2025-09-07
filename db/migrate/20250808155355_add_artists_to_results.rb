class AddArtistsToResults < ActiveRecord::Migration[7.2]
  def change
    add_column :results, :artists, :text
  end
end
