class AddOvaryStructureToGynecologicExaminationOvary < ActiveRecord::Migration
  def change
    add_column :gynecologic_examination_ovaries, :structure_id, :integer
  end
end
