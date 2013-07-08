class RemoveCervixSizeFromGynecologicExaminations < ActiveRecord::Migration
  def up
    drop_table :gynecologic_examination_cervix_sizes
    remove_column :gynecologic_examinations, :cervix_size_id
  end

  def down
  end
end
