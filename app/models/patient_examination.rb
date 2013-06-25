class PatientExamination < ActiveRecord::Base
  belongs_to :patient
  attr_accessible :patient_id
end
