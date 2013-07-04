# encoding: UTF-8
class CreateGynecologicExaminationUterineBodyVisibilities < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_uterine_body_visibilities do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::UterineBodyVisibility.create(value: 'определяется')
    GynecologicExamination::UterineBodyVisibility.create(value: 'не определяется')
  end
end
