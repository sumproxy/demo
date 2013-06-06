class CreateLiverConditions < ActiveRecord::Migration
  def change
    create_table :liver_conditions do |t|
      t.string :condition

      t.timestamps
    end
  end
end
