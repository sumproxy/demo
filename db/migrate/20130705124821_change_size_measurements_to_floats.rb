class ChangeSizeMeasurementsToFloats < ActiveRecord::Migration
  def up
    change_column :gynecologic_examination_endometrium_echostructure_hyperechoic_inclusions, :size, :float
    change_column :gynecologic_examination_myometric_structure_nodes, :size, :float
    change_column :gynecologic_examination_ovaries, :length, :float
    change_column :gynecologic_examination_ovaries, :thickness, :float
    change_column :gynecologic_examination_ovaries, :width, :float
    change_column :gynecologic_examinations, :uterine_length, :float
    change_column :gynecologic_examinations, :uterine_anteroposterior, :float
    change_column :gynecologic_examinations, :uterine_width, :float
    change_column :gynecologic_examinations, :endometrial_thickness, :float
  end

  def down
    change_column :gynecologic_examination_endometrium_echostructure_hyperechoic_inclusions, :size, :integer
    change_column :gynecologic_examination_myometric_structure_nodes, :size, :integer
    change_column :gynecologic_examination_ovaries, :length, :integer
    change_column :gynecologic_examination_ovaries, :thickness, :integer
    change_column :gynecologic_examination_ovaries, :width, :integer
    change_column :gynecologic_examinations, :uterine_length, :integer
    change_column :gynecologic_examinations, :uterine_anteroposterior, :integer
    change_column :gynecologic_examinations, :uterine_width, :integer
    change_column :gynecologic_examinations, :endometrial_thickness, :integer
  end
end
