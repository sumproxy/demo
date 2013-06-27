class AddUterineAdumbrationToGynecologicExamination < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :uterine_adumbration_id, :integer
  end
end
