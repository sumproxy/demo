# -*- encoding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if Sex.all.empty?
  Sex.create(value: 'мужской')
  Sex.create(value: 'женский')
end
if GynecologicExamination::UterineBoundary.all.empty?
  GynecologicExamination::UterineBoundary.create(value: 'чёткие')
  GynecologicExamination::UterineBoundary.create(value: 'нечёткие')
end
if GynecologicExamination::UterineAdumbration.all.empty?
  GynecologicExamination::UterineAdumbration.create(value: 'ровные')
  GynecologicExamination::UterineAdumbration.create(value: 'неровные')
end
if GynecologicExamination::UterineShape.all.empty?
  GynecologicExamination::UterineShape.create(value: 'обычная')
  GynecologicExamination::UterineShape.create(value: 'шаровидная')
  GynecologicExamination::UterineShape.create(value: 'неправильная')
end
if GynecologicExamination::UterineSize.all.empty?
  GynecologicExamination::UterineSize.create(value: 'обычные')
  GynecologicExamination::UterineSize.create(value: 'увеличены')
  GynecologicExamination::UterineSize.create(value: 'уменьшены')
end
if GynecologicExamination::EndometrialBoundary.all.empty?
  GynecologicExamination::EndometrialBoundary.create(value: 'чёткие')
  GynecologicExamination::EndometrialBoundary.create(value: 'нечёткие')
end
if GynecologicExamination::EndometrialAdumbration.all.empty?
  GynecologicExamination::EndometrialAdumbration.create(value: 'ровные')
  GynecologicExamination::EndometrialAdumbration.create(value: 'неровные')
end
if GynecologicExamination::EndometriumPhase.all.empty?
  GynecologicExamination::EndometriumPhase.create(value: 'I')
  GynecologicExamination::EndometriumPhase.create(value: 'периовуляторной')
  GynecologicExamination::EndometriumPhase.create(value: 'II')
  GynecologicExamination::EndometriumPhase.create(value: 'не соответствует')
end
if GynecologicExamination::UterineCavityDeformation.all.empty?
  GynecologicExamination::UterineCavityDeformation.create(value: 'не деформирована')
  GynecologicExamination::UterineCavityDeformation.create(value: 'деформирована')
end
if GynecologicExamination::UterineCavitySize.all.empty?
  GynecologicExamination::UterineCavitySize.create(value: 'не расширена')
  GynecologicExamination::UterineCavitySize.create(value: 'расширена')
end
if GynecologicExamination::CervixVisibility.all.empty?
  GynecologicExamination::CervixVisibility.create(value: 'определяется')
  GynecologicExamination::CervixVisibility.create(value: 'не определяется')
end
if GynecologicExamination::CervixSize.all.empty?
  GynecologicExamination::CervixSize.create(value: 'обычных размеров')
  GynecologicExamination::CervixSize.create(value: 'укорочена')
end
if GynecologicExamination::CervixStructureChange.all.empty?
  GynecologicExamination::CervixStructureChange.create(value: 'не изменена')
  GynecologicExamination::CervixStructureChange.create(value: 'изменена')
end
if GynecologicExamination::Ovary::Visibility.all.empty?
  GynecologicExamination::Ovary::Visibility.create(value: 'определяется')
  GynecologicExamination::Ovary::Visibility.create(value: 'не определяется')
end
if GynecologicExamination::Ovary::Size.all.empty?
  GynecologicExamination::Ovary::Size.create(value: 'обычные')
  GynecologicExamination::Ovary::Size.create(value: 'увеличены')
  GynecologicExamination::Ovary::Size.create(value: 'уменьшены')
end
if GynecologicExamination::Ovary::Structure.all.empty?
  GynecologicExamination::Ovary::Structure.create(value: 'обычная')
  GynecologicExamination::Ovary::Structure.create(value: 'изменена')
end