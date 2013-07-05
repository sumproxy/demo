# encoding: UTF-8
class CreateGynecologicExaminationEndometriumEchostructureChanges < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_endometrium_echostructure_changes do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::EndometriumEchostructureChange.create(value: 'не изменена')
    GynecologicExamination::EndometriumEchostructureChange.create(value: 'изменена')
    GynecologicExamination::EndometriumEchostructureChange.create(value: '-- не задано --')
  end
end
