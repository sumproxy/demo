# encoding: UTF-8
class CreatePregnancyTrimesterIExaminationOvumLocalizations < ActiveRecord::Migration
  def change
    create_table :pregnancy_trimester_i_examination_ovum_localizations do |t|
      t.string :value

      t.timestamps
    end
    PregnancyTrimesterIExamination::Ovum::Localization.create(value: 'в дне')
    PregnancyTrimesterIExamination::Ovum::Localization.create(value: 'в среднем отделе полости матки')
    PregnancyTrimesterIExamination::Ovum::Localization.create(value: 'в нижнем отделе полости матки')
  end
end
