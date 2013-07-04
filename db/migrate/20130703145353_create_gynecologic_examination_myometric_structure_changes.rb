# encoding: UTF-8
class CreateGynecologicExaminationMyometricStructureChanges < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_myometric_structure_changes do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::MyometricStructureChange.create(value: 'не изменена')
    GynecologicExamination::MyometricStructureChange.create(value: 'изменена')
    GynecologicExamination::MyometricStructureChange.create(value: '-- не задано --')
  end
end
