class AddMyometricStructureChangeToGynecologicExaminations < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :myometric_structure_change_id, :integer
  end
end
