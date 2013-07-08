# encoding: UTF-8
class UpdateSelectOptionsOfGynecologicExaminationUterineShapes < ActiveRecord::Migration
  def change
    GynecologicExamination::UterineShape.delete_all
    GynecologicExamination::UterineShape.create(value: 'обычная')
    GynecologicExamination::UterineShape.create(value: 'шаровидная')
    GynecologicExamination::UterineShape.create(value: 'седловидная')
    GynecologicExamination::UterineShape.create(value: 'двурогая')
    GynecologicExamination::UterineShape.create(value: 'неправильная')
    GynecologicExamination::UterineShape.create(value: '-- не задано --')
  end
end
