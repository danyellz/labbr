class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.string :title
      t.text :body

      t.references :experiment, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps null: false
    end
  end
end
