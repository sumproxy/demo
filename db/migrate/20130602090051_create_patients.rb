class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :last_name
      t.string :first_name
      t.string :patronymic
      t.date :dob
      t.references :liver_condition

      t.timestamps
    end
    add_index :patients, :liver_condition_id
    # add_index :patients, [ :last_name, :first_name, :patronymic, :dob ], :unique => true
  end
end
