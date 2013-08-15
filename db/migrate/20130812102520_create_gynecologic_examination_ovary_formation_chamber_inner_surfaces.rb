# encoding: UTF-8
class CreateGynecologicExaminationOvaryFormationChamberInnerSurfaces < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_ovary_formation_chamber_inner_surfaces do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::Ovary::Formation::Chamber::InnerSurface.create(value: "ровная")
    GynecologicExamination::Ovary::Formation::Chamber::InnerSurface.create(value: "неровная")
  end
end
