class CreatePregnancyTrimesterIExaminationOvumFetuses < ActiveRecord::Migration
  def change
    create_table :pregnancy_trimester_i_examination_ovum_fetuses do |t|
      t.references :ovum
      t.float :coccyx_parietal_size
      t.float :biparietal_size
      t.boolean :is_fetal_cardiac_activity_manifested

      t.timestamps
    end
    add_index :pregnancy_trimester_i_examination_ovum_fetuses, :ovum_id
  end
end
