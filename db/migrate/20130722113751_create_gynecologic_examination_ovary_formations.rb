class CreateGynecologicExaminationOvaryFormations < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_ovary_formations do |t|
      t.references :ovary
      t.integer :shape_id
      t.integer :boundary_id
      t.integer :adumbration_id
      t.float :size
      t.integer :structure_id
      t.integer :content_id
      t.float :wall_thickness
      t.text :comment

      t.timestamps
    end
    add_index :gynecologic_examination_ovary_formations, :ovary_id
  end
end
