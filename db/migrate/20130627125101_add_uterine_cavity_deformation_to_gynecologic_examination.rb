class AddUterineCavityDeformationToGynecologicExamination < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :uterine_cavity_deformation_id, :integer
  end
end
