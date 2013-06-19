class AddIndexToPatiens < ActiveRecord::Migration
  def change
    add_index :patients, [:address_id], :name => "index_patients_on_address_id"
  end
end
