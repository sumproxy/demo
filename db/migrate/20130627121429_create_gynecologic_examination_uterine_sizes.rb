# encoding: UTF-8
class CreateGynecologicExaminationUterineSizes < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_uterine_sizes do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::UterineSize.create(value: 'обычные')
    GynecologicExamination::UterineSize.create(value: 'увеличены')
    GynecologicExamination::UterineSize.create(value: 'уменьшены')
  end
end
