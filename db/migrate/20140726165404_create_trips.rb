class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
    	t.string :where, null: false
    	t.string :when, null: false
    	t.integer :price, null: false
    	t.belongs_to :member

      t.timestamps
    end
  end

  def down #why? 
  	drop_table :trips
  end
end
