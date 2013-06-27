# encoding: UTF-8
class CreateGynecologicExaminationEndometrialBoundaries < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_endometrial_boundaries do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::EndometrialBoundary.create(value: 'чёткие')
    GynecologicExamination::EndometrialBoundary.create(value: 'нечёткие')
  end
end
