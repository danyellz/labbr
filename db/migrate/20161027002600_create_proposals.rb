class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :title
      t.text :summary
      t.text :hypothesis
      t.string :status

      t.references :user, foreign_key: true

      t.timestamps null: false
    end
  end
end