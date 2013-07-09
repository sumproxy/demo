class AddFollicleToGynecologicExaminationOvaries < ActiveRecord::Migration
  def change
    add_column :gynecologic_examination_ovaries, :follicle_id, :integer
    add_column :gynecologic_examination_ovaries, :is_follicle_visible, :boolean
  end
end
