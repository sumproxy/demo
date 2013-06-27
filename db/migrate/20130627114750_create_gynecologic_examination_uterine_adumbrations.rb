# encoding: UTF-8
class CreateGynecologicExaminationUterineAdumbrations < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_uterine_adumbrations do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::UterineAdumbration.create(value: 'ровные')
    GynecologicExamination::UterineAdumbration.create(value: 'неровные')
  end
end
