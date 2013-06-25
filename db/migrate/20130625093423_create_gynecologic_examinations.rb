class CreateGynecologicExaminations < ActiveRecord::Migration
  def change
    create_table :gynecologic_examinations do |t|
      t.date :menstruation_date
      t.integer :menstruation_day
      t.integer :uterine_length
      t.integer :uterine_anteroposterior
      t.integer :uterine_width
      t.integer :endometrial_thickness

      t.timestamps
    end
  end
end
