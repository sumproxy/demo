class CreateGynecologicExaminationOvaries < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_ovaries do |t|
      t.integer :length
      t.integer :thickness
      t.integer :width

      t.timestamps
    end
  end
end
