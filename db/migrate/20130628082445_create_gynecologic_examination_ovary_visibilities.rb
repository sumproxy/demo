# encoding: UTF-8
class CreateGynecologicExaminationOvaryVisibilities < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_ovary_visibilities do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::Ovary::Visibility.create(value: 'определяется')
    GynecologicExamination::Ovary::Visibility.create(value: 'не определяется')
  end
end
