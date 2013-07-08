class AddCervixSizeToGynecologicExaminations < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :cervix_size, :float
    add_column :gynecologic_examinations, :is_cervix_of_normal_size, :boolean
  end
end
