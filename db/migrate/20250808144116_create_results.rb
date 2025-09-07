class CreateResults < ActiveRecord::Migration[7.2]
  def change
    create_table :results do |t|
      t.string :code
      t.string :artist
      t.string :song
      t.text :description

      t.timestamps
    end
  end
end
