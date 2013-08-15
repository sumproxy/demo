# encoding: UTF-8
class CreateGynecologicExaminationOvaryFormationChamberSuspensions < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_ovary_formation_chamber_suspensions do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::Ovary::Formation::Chamber::Suspension.create(value: "единичная")
    GynecologicExamination::Ovary::Formation::Chamber::Suspension.create(value: "несмещаемая")
  end
end
