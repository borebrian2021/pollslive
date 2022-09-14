class CreatePartiesTable < ActiveRecord::Migration[6.1]
  def change
 
  create_table :parties do |t|
    t.string :party_name
    t.string :candidate_name
    t.string :profile_image
    t.string :party_logo
  end
 end
end