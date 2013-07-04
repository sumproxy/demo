class AddUterineBodyDetectionPositionToGynecologicExaminations < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :uterine_body_detection_position_id, :integer
  end
end
