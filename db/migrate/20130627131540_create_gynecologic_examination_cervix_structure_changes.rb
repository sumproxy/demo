# encoding: UTF-8
class CreateGynecologicExaminationCervixStructureChanges < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_cervix_structure_changes do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::CervixStructureChange.create(value: 'не изменена')
    GynecologicExamination::CervixStructureChange.create(value: 'изменена')
  end
end
