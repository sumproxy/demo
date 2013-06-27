class AddUterineShapeToGynecologicExamination < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :uterine_shape_id, :integer
  end
end
