class CreateProposals < ActiveRecord::Migration
  def change
    create_table :proposals do |t|
      t.string :title
      t.text :summary
      t.text :hypothesis
      t.string :status, :null => false, :default => 'open'

      t.references :user, foreign_key: true

      t.timestamps null: false
    end
  end
end

 Proposal.create(title: "hey", summary: "yeah", hypothesis: "thing", status: "open")