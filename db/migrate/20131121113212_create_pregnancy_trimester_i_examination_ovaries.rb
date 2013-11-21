class CreatePregnancyTrimesterIExaminationOvaries < ActiveRecord::Migration
  def change
    create_table :pregnancy_trimester_i_examination_ovaries do |t|
      t.boolean :is_visible
      t.float :length
      t.float :width
      t.float :anteroposterior
      t.boolean :is_yellow_body_present
      t.float :yellow_body_diameter

      t.timestamps
    end
  end
end
