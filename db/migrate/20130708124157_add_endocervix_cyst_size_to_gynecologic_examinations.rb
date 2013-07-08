class AddEndocervixCystSizeToGynecologicExaminations < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :endocervix_cyst_min_size, :float
    add_column :gynecologic_examinations, :endocervix_cyst_max_size, :float
    add_column :gynecologic_examinations, :is_endocervix_cyst_multiple, :boolean
  end
end
