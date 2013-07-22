# encoding: UTF-8
class CreateGynecologicExaminationOvaryFormationContents < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_ovary_formation_contents do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::Ovary::Formation::Content.create(value: "однокамерное")
    GynecologicExamination::Ovary::Formation::Content.create(value: "многокамерное")
  end
end
