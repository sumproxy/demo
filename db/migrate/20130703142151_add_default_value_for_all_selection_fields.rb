# encoding: UTF-8
class AddDefaultValueForAllSelectionFields < ActiveRecord::Migration
  def up
    GynecologicExamination::UterineBoundary.create(value: '-- не задано --')
    GynecologicExamination::UterineAdumbration.create(value: '-- не задано --')
    GynecologicExamination::UterineShape.create(value: '-- не задано --')
    GynecologicExamination::UterineSize.create(value: '-- не задано --')
    GynecologicExamination::EndometrialBoundary.create(value: '-- не задано --')
    GynecologicExamination::EndometrialAdumbration.create(value: '-- не задано --')
    GynecologicExamination::EndometriumPhase.create(value: '-- не задано --')
    GynecologicExamination::UterineCavityDeformation.create(value: '-- не задано --')
    GynecologicExamination::UterineCavitySize.create(value: '-- не задано --')
    GynecologicExamination::CervixVisibility.create(value: '-- не задано --')
    GynecologicExamination::CervixSize.create(value: '-- не задано --')
    GynecologicExamination::CervixStructureChange.create(value: '-- не задано --')
    GynecologicExamination::Ovary::Visibility.create(value: '-- не задано --')
    GynecologicExamination::Ovary::Size.create(value: '-- не задано --')
    GynecologicExamination::Ovary::Structure.create(value: '-- не задано --')
    GynecologicExamination::UterineBodyVisibility.create(value: '-- не задано --')
    GynecologicExamination::UterineBodyDetectionPosition.create(value: '-- не задано --')
  end

  def down
    GynecologicExamination::UterineBoundary.find_by_value('-- не задано --').destroy
    GynecologicExamination::UterineAdumbration.find_by_value('-- не задано --').destroy
    GynecologicExamination::UterineShape.find_by_value('-- не задано --').destroy
    GynecologicExamination::UterineSize.find_by_value('-- не задано --').destroy
    GynecologicExamination::EndometrialBoundary.find_by_value('-- не задано --').destroy
    GynecologicExamination::EndometrialAdumbration.find_by_value('-- не задано --').destroy
    GynecologicExamination::EndometriumPhase.find_by_value('-- не задано --').destroy
    GynecologicExamination::UterineCavityDeformation.find_by_value('-- не задано --').destroy
    GynecologicExamination::UterineCavitySize.find_by_value('-- не задано --').destroy
    GynecologicExamination::CervixVisibility.find_by_value('-- не задано --').destroy
    GynecologicExamination::CervixSize.find_by_value('-- не задано --').destroy
    GynecologicExamination::CervixStructureChange.find_by_value('-- не задано --').destroy
    GynecologicExamination::Ovary::Visibility.find_by_value('-- не задано --').destroy
    GynecologicExamination::Ovary::Size.find_by_value('-- не задано --').destroy
    GynecologicExamination::Ovary::Structure.find_by_value('-- не задано --').destroy
    GynecologicExamination::UterineBodyVisibility.find_by_value('-- не задано --').destroy
    GynecologicExamination::UterineBodyDetectionPosition.find_by_value('-- не задано --').destroy
  end
end
