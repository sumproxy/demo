class AddUserIdToGynecologicExaminations < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :user_id, :integer
  end
end
