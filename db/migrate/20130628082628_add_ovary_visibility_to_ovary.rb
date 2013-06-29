class AddOvaryVisibilityToOvary < ActiveRecord::Migration
  def change
    add_column :gynecologic_examination_ovaries, :visibility_id, :integer
  end
end
