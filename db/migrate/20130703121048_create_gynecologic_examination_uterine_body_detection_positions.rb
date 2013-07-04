# encoding: UTF-8
class CreateGynecologicExaminationUterineBodyDetectionPositions < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_uterine_body_detection_positions do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::UterineBodyDetectionPosition.create(value: 'в обычном положении')
    GynecologicExamination::UterineBodyDetectionPosition.create(value: 'retroflexio')
  end
end
