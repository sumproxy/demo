# encoding: UTF-8
class CreateGynecologicExaminationEndometriumPhases < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_endometrium_phases do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::EndometriumPhase.create(value: 'I')
    GynecologicExamination::EndometriumPhase.create(value: 'периовуляторной')
    GynecologicExamination::EndometriumPhase.create(value: 'II')
    GynecologicExamination::EndometriumPhase.create(value: 'не соответствует')
  end
end
