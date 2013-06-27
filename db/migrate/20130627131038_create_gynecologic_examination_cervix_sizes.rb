# encoding: UTF-8
class CreateGynecologicExaminationCervixSizes < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_cervix_sizes do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::CervixSize.create(value: 'обычных размеров')
    GynecologicExamination::CervixSize.create(value: 'укорочена')
  end
end
