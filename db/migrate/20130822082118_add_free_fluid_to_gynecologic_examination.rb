class AddFreeFluidToGynecologicExamination < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :is_free_fluid_present, :boolean
    add_column :gynecologic_examinations, :is_pathologic_formation_present, :boolean
    add_column :gynecologic_examinations, :free_fluid_amount_id, :integer
  end
end
