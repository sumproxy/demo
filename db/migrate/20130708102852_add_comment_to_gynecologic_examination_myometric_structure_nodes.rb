class AddCommentToGynecologicExaminationMyometricStructureNodes < ActiveRecord::Migration
  def change
    add_column :gynecologic_examination_myometric_structure_nodes, :comment, :text
  end
end
