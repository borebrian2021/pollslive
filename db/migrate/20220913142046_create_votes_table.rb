class CreateVotesTable < ActiveRecord::Migration[6.1]
  def change
    
    create_table :votes do |t|
      t.integer :party_id
      t.string :voters_id
      t.timestamps
    end
  end
end
