class CreatePregnancyTrimesterIExaminations < ActiveRecord::Migration
  def change
    create_table :pregnancy_trimester_i_examinations do |t|
      t.float :uterus_length
      t.float :uterus_anteroposterior
      t.float :uterus_transverse_size
      t.integer :gestation_age_in_weeks
      t.integer :left_ovary_id
      t.integer :right_ovary_id
      t.text :comments
      t.integer :user_id

      t.timestamps
    end
  end
end
