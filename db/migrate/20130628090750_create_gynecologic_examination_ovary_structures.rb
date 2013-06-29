# encoding: UTF-8
class CreateGynecologicExaminationOvaryStructures < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_ovary_structures do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::Ovary::Structure.create(value: 'обычная')
    GynecologicExamination::Ovary::Structure.create(value: 'изменена')
  end
end
