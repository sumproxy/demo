# encoding: UTF-8
class CreateGynecologicExaminationOvarySizes < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_ovary_sizes do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::Ovary::Size.create(value: 'обычные')
    GynecologicExamination::Ovary::Size.create(value: 'увеличены')
    GynecologicExamination::Ovary::Size.create(value: 'уменьшены')
  end
end
