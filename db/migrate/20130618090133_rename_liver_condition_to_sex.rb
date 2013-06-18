class RenameLiverConditionToSex < ActiveRecord::Migration
  def change
    rename_column :liver_conditions, :condition, :value
    rename_table :liver_conditions, :sexes
    rename_column :patients, :liver_condition_id, :sex_id
  end
end
