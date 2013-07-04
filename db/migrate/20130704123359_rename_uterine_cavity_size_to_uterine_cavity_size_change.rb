class RenameUterineCavitySizeToUterineCavitySizeChange < ActiveRecord::Migration
  def change
    rename_table :gynecologic_examination_uterine_cavity_sizes, :gynecologic_examination_uterine_cavity_size_changes
    rename_column :gynecologic_examinations, :uterine_cavity_size_id, :uterine_cavity_size_change_id
  end
end
