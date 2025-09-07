class AddArtist1ToResults < ActiveRecord::Migration[7.2]
  def change
    add_column :results, :artist1, :string
  end
end
