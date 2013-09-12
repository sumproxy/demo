# encoding: UTF-8
class UpdateMyometriumNodeLocalizations < ActiveRecord::Migration
  def up
    new_value = {
      'в передней стенке' => 'передняя стенка',
      'в задней стенке' => 'задняя стенка',
      'в правом ребре' => 'правое ребро',
      'в левом ребре' => 'левое ребро',
      'в дне' => 'дно',
      'в области перешейка' => 'область перешейка',
      'в передней поверхности шейки' => 'передняя поверхность шейки',
      'в задней поверхности шейки' => 'задняя поверхность шейки' }
    GynecologicExamination::MyometricStructureNode::Localization.all.each do |item|
      item.update_attribute :value, new_value[item.value]
    end
  end

  def down
  end
end
