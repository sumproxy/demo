class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :last_name
      t.string :first_name
      t.string :patronymic
      t.string :hashed_password
      t.string :salt

      t.timestamps
    end
  end
end
