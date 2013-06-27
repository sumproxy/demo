# encoding: UTF-8
class CreateGynecologicExaminationUterineShapes < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_uterine_shapes do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::UterineShape.create(value: 'обычная')
    GynecologicExamination::UterineShape.create(value: 'шаровидная')
    GynecologicExamination::UterineShape.create(value: 'неправильная')
  end
end
