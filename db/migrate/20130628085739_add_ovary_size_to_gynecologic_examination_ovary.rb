class AddOvarySizeToGynecologicExaminationOvary < ActiveRecord::Migration
  def change
    add_column :gynecologic_examination_ovaries, :size_id, :integer
  end
end
