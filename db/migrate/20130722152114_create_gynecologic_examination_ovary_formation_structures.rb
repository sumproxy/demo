# encoding: UTF-8
class CreateGynecologicExaminationOvaryFormationStructures < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_ovary_formation_structures do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::Ovary::Formation::Structure.create(value: "анэхогенная")
    GynecologicExamination::Ovary::Formation::Structure.create(value: "изоэхогенная")
    GynecologicExamination::Ovary::Formation::Structure.create(value: "гиперэхогенная")
    GynecologicExamination::Ovary::Formation::Structure.create(value: "сетчатая")
    GynecologicExamination::Ovary::Formation::Structure.create(value: "неоднородная")
    GynecologicExamination::Ovary::Formation::Structure.create(value: "солидная")
  end
end
