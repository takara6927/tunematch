class CreateDiagnoses < ActiveRecord::Migration[7.2]
  def change
    create_table :diagnoses do |t|
      t.references :user, null: false, foreign_key: true
      t.string :result_title
      t.text :result_summary
      t.json :tracks

      t.timestamps
    end
  end
end
