class ChangeIndexOnPatients < ActiveRecord::Migration
  def up
    remove_index :patients, :name => "index_patients_on_liver_condition_id"
    add_index :patients, [:sex_id], :name => "index_patients_on_sex_id"
  end

  def down
    remove_index :patients, :name => "index_patients_on_sex_id"
    add_index :patients, [:liver_condition_id], :name => "index_patients_on_liver_condition_id"
  end
end
