class AddEndometrialAdumbrationToGynecologicExamination < ActiveRecord::Migration
  def change
    add_column :gynecologic_examinations, :endometrial_adumbration_id, :integer
  end
end
