class AddUterineCavitySizeToGynecologicExamination < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :uterine_cavity_size_id, :integer
  end
end
