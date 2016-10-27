class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.string :title
      t.text :procedures
      t.string :results
      t.string :text
      t.string :conclusion
      t.string :text

      t.references :proposal, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps null: false
    end
  end
end
