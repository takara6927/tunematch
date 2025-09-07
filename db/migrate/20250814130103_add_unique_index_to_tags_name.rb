class AddUniqueIndexToTagsName < ActiveRecord::Migration[7.2]
  def change
    remove_index :tags, :name rescue nil
    add_index :tags, :name, unique: true
  end
end
