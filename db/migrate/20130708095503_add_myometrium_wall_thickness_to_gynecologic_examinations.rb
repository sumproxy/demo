class AddMyometriumWallThicknessToGynecologicExaminations < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :myometrium_anterior_wall_thickness, :float
    add_column :gynecologic_examinations, :myometrium_posterior_wall_thickness, :float
  end
end
