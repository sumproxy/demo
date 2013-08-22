class AddReportToGynecologicExaminations < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :report, :text
  end
end
