class RemoveImageUrlFromResults < ActiveRecord::Migration[7.2]
  def change
    remove_column :results, :image_url, :string
  end
end
