class CreateExperiments < ActiveRecord::Migration
  def change
    create_table :experiments do |t|
      t.string :title
      t.text :procedures
      t.text :results
      t.text :conclusion

      t.references :proposal, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps null: false
    end
  end
end
