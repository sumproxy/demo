class AddGynecologicExaminationToPatientExamination < ActiveRecord::Migration
  def change
    add_column :patient_examinations, :gynecologic_examination_id, :integer
  end
end
