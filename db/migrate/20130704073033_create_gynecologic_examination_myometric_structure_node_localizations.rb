# encoding: UTF-8
class CreateGynecologicExaminationMyometricStructureNodeLocalizations < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_myometric_structure_node_localizations do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::MyometricStructureNode::Localization.create(value: 'передняя стенка')
    GynecologicExamination::MyometricStructureNode::Localization.create(value: 'задняя стенка')
    GynecologicExamination::MyometricStructureNode::Localization.create(value: 'правое ребро')
    GynecologicExamination::MyometricStructureNode::Localization.create(value: 'левое ребро')
    GynecologicExamination::MyometricStructureNode::Localization.create(value: 'дно')
    GynecologicExamination::MyometricStructureNode::Localization.create(value: 'в области перешейка')
    GynecologicExamination::MyometricStructureNode::Localization.create(value: 'передняя поверхность шейки')
    GynecologicExamination::MyometricStructureNode::Localization.create(value: 'задняя поверхность шейки')
    GynecologicExamination::MyometricStructureNode::Localization.create(value: '-- не задано --')
  end
end
