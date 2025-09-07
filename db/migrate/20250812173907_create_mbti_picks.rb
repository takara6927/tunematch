class CreateMbtiPicks < ActiveRecord::Migration[7.2]
  def change
    create_table :mbti_picks do |t|
      t.string :mbti_code
      t.string :artist
      t.string :title
      t.string :youtube_url
      t.text :reason
      t.integer :rank

      t.timestamps
    end
    add_index :mbti_picks, [:mbti_code, :rank], unique: true
  end
end
