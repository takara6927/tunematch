class RemoveUnusedColumnsFromResults < ActiveRecord::Migration[7.2]
  def change
    remove_column :results, :artist, :string
    remove_column :results, :song, :string
    remove_column :results, :artists, :string
  end
end
