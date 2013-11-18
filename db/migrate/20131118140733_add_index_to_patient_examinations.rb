class AddIndexToPatientExaminations < ActiveRecord::Migration
  def change
    add_index "patient_examinations", ["patient_id", "pregnancy_trimester_i_examination_id"], :name => "index_on_patient_id_and_pregnancy_trimester_i_examination_id"
  end
end
