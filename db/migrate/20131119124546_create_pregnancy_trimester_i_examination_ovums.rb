class CreatePregnancyTrimesterIExaminationOvums < ActiveRecord::Migration
  def change
    create_table :pregnancy_trimester_i_examination_ovums do |t|
      t.references :pregnancy_trimester_i_examination
      t.integer :localization_id
      t.float :length
      t.float :anteroposterior
      t.float :median_inner_diameter
      t.integer :gestation_age_in_weeks

      t.timestamps
    end
    add_index :pregnancy_trimester_i_examination_ovums, :pregnancy_trimester_i_examination_id, :name => "index_pregnancy_trimester_i_examination_on_exam_id"
  end
end
