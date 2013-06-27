# encoding: UTF-8
class CreateGynecologicExaminationUterineCavityDeformations < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_uterine_cavity_deformations do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::UterineCavityDeformation.create(value: 'не деформирована')
    GynecologicExamination::UterineCavityDeformation.create(value: 'деформирована')
  end
end
