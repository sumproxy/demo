class AddUterineSizeToGynecologicExamination < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :uterine_size_id, :integer
  end
end
