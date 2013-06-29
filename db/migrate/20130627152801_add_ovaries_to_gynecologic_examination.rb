class AddOvariesToGynecologicExamination < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :left_ovary_id, :integer
    add_column :gynecologic_examinations, :right_ovary_id, :integer
  end
end
