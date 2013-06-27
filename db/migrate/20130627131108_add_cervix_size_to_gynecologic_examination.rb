class AddCervixSizeToGynecologicExamination < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :cervix_size_id, :integer
  end
end
