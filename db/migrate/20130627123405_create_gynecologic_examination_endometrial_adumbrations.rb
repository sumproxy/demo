# encoding: UTF-8
class CreateGynecologicExaminationEndometrialAdumbrations < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_endometrial_adumbrations do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::EndometrialAdumbration.create(value: 'ровные')
    GynecologicExamination::EndometrialAdumbration.create(value: 'неровные')
  end
end
