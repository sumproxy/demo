# encoding: UTF-8
class CreateGynecologicExaminationMyometricStructureNodeDepthLocalizations < ActiveRecord::Migration
  def change
    create_table :gynecologic_examination_myometric_structure_node_depth_localizations do |t|
      t.string :value

      t.timestamps
    end
    GynecologicExamination::MyometricStructureNode::DepthLocalization.create(value: 'субсерозно')
    GynecologicExamination::MyometricStructureNode::DepthLocalization.create(value: 'интерстициально-субсерозно')
    GynecologicExamination::MyometricStructureNode::DepthLocalization.create(value: 'интерстициально')
    GynecologicExamination::MyometricStructureNode::DepthLocalization.create(value: 'интерстициально-субмукозно')
    GynecologicExamination::MyometricStructureNode::DepthLocalization.create(value: 'субмукозно')
    GynecologicExamination::MyometricStructureNode::DepthLocalization.create(value: '-- не задано --')
  end
end
