# encoding: UTF-8
class CreateGynecologicExaminationOvaryFormationAdumbrations < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_ovary_formation_adumbrations do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::Ovary::Formation::Adumbration.create(value: "ровные")
    GynecologicExamination::Ovary::Formation::Adumbration.create(value: "неровные")
  end
end
