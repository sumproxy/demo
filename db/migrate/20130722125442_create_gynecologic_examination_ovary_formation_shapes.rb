# encoding: UTF-8
class CreateGynecologicExaminationOvaryFormationShapes < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_ovary_formation_shapes do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::Ovary::Formation::Shape.create(value: "округлая")
    GynecologicExamination::Ovary::Formation::Shape.create(value: "овальная")
    GynecologicExamination::Ovary::Formation::Shape.create(value: "колбасовидная")
    GynecologicExamination::Ovary::Formation::Shape.create(value: "неправильная")
  end
end
