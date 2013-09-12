class AddUterineVolumeToGynecologicExaminations < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :uterine_volume, :float
  end
end
