class CreateVotersTable < ActiveRecord::Migration[6.1]
  def change
    create_table :users  do |t|
      t.string :name
      t.string :email
      t.integer :role
      t.timestamps
      t.string :googleId
      t.string :img_url
    end
  end
end
