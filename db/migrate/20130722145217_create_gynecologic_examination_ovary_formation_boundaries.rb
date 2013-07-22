# encoding: UTF-8
class CreateGynecologicExaminationOvaryFormationBoundaries < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_ovary_formation_boundaries do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::Ovary::Formation::Boundary.create(value: "чёткие")
    GynecologicExamination::Ovary::Formation::Boundary.create(value: "нечёткие")
  end
end
