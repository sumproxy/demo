# encoding: UTF-8
class CreateGynecologicExaminationCervixVisibilities < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_cervix_visibilities do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::CervixVisibility.create(value: 'определяется')
    GynecologicExamination::CervixVisibility.create(value: 'не определяется')
  end
end
