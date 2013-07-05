# encoding: UTF-8
class CreateGynecologicExaminationEndometriumEchostructureChangeTypes < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_endometrium_echostructure_change_types do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::EndometriumEchostructureChangeType.create(value: 'неоднородное')
    GynecologicExamination::EndometriumEchostructureChangeType.create(value: 'больше гиперэхогенное')
    GynecologicExamination::EndometriumEchostructureChangeType.create(value: 'гиперэхогенное включение')
    GynecologicExamination::EndometriumEchostructureChangeType.create(value: '-- не задано --')
  end
end
