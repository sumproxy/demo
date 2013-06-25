class AddUterineBoundariesToGynecologicExamination < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :uterine_boundary_id, :integer
  end
end
