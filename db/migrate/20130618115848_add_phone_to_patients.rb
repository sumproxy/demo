class AddPhoneToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :phone, :string
  end
end
