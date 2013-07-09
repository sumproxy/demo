class CreateGynecologicExaminationOvaryFollicles < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_ovary_follicles do |t|
      t.float :min_size
      t.float :max_size
      t.string :amount

      t.timestamps
    end
  end
end
