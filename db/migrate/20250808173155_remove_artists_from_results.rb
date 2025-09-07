class RemoveArtistsFromResults < ActiveRecord::Migration[7.2]
  def change
    remove_column :results, :artists, :string
  end
end
