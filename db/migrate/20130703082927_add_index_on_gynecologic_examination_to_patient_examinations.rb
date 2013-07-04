class AddIndexOnGynecologicExaminationToPatientExaminations < ActiveRecord::Migration
  def change
    add_index :patient_examinations, [:patient_id, :gynecologic_examination_id], :name => "index_on_patient_id_and_gynecologic_examination_id"
  end
end
