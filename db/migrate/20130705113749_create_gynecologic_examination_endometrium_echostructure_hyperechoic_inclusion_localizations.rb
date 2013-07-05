# encoding: UTF-8
class CreateGynecologicExaminationEndometriumEchostructureHyperechoicInclusionLocalizations < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_endometrium_echostructure_hyperechoic_inclusion_localizations do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::EndometriumEchostructureHyperechoicInclusion::Localization.create(value: 'в нижней трети')
    GynecologicExamination::EndometriumEchostructureHyperechoicInclusion::Localization.create(value: 'в средней трети')
    GynecologicExamination::EndometriumEchostructureHyperechoicInclusion::Localization.create(value: 'в дне')
    GynecologicExamination::EndometriumEchostructureHyperechoicInclusion::Localization.create(value: '-- не задано --')
  end
end
