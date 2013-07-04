class AddUterineBodyVisibilityToGynecologicExaminations < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :uterine_body_visibility_id, :integer
  end
end
