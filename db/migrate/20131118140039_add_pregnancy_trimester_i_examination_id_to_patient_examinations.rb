class AddPregnancyTrimesterIExaminationIdToPatientExaminations < ActiveRecord::Migration
  def change
    add_column :patient_examinations, :pregnancy_trimester_i_examination_id, :integer
  end
end
