class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :street
      t.string :house
      t.integer :appartment

      t.timestamps
    end
  end
end
