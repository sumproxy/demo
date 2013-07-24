class CreateGynecologicExaminationOvaryFormationChambers < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_ovary_formation_chambers do |t|
      t.references :formation
      t.float :size
      t.integer :suspension_id
      t.integer :inner_surface_id
      t.text :comment

      t.timestamps
    end
    add_index :gynecologic_examination_ovary_formation_chambers, :formation_id, :name => "index_ovary_formation_chambers_on_id"
  end
end
