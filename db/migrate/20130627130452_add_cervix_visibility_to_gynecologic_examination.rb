class AddCervixVisibilityToGynecologicExamination < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :cervix_visibility_id, :integer
  end
end
