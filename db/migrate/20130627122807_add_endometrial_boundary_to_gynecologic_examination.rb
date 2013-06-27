class AddEndometrialBoundaryToGynecologicExamination < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :endometrial_boundary_id, :integer
  end
end
