class Test < ActiveRecord::Migration[6.1]
  def change
    create_table :test do |t|
      t.string :test 
  end
end
