# encoding: UTF-8
class CreateGynecologicExaminationUterineCavitySizes < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_uterine_cavity_sizes do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::UterineCavitySize.create(value: 'не расширена')
    GynecologicExamination::UterineCavitySize.create(value: 'расширена')
  end
end
