class CreateGynecologicExaminationMyometricStructureNodes < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_myometric_structure_nodes do |t|
      t.integer :size
      t.integer :gynecologic_examination_id
      t.integer :localization_id
      t.integer :depth_localization_id

      t.timestamps
    end
  end
end
