# encoding: UTF-8
class UpdateGynecologicExaminationMyometricStructureNodeLocalizations < ActiveRecord::Migration
  def up
    GynecologicExamination::MyometricStructureNode::Localization.delete_all
    GynecologicExamination::MyometricStructureNode::Localization.create(value: 'в передней стенке')
    GynecologicExamination::MyometricStructureNode::Localization.create(value: 'в задней стенке')
    GynecologicExamination::MyometricStructureNode::Localization.create(value: 'в правом ребре')
    GynecologicExamination::MyometricStructureNode::Localization.create(value: 'в левом ребре')
    GynecologicExamination::MyometricStructureNode::Localization.create(value: 'в дне')
    GynecologicExamination::MyometricStructureNode::Localization.create(value: 'в области перешейка')
    GynecologicExamination::MyometricStructureNode::Localization.create(value: 'в передней поверхности шейки')
    GynecologicExamination::MyometricStructureNode::Localization.create(value: 'в задней поверхности шейки')
    GynecologicExamination::MyometricStructureNode::Localization.create(value: '-- не задано --')
  end

  def down
  end
end
