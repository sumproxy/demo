class AddCervixStructureChangeToGynecologicExamination < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :cervix_structure_change_id, :integer
  end
end
