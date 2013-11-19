class PregnancyTrimesterIExamination < ActiveRecord::Base
  has_many :patient_examinations
  has_many :patients, :through => :patient_examinations
  attr_accessible :comments
  attr_accessible :gestation_age_in_weeks
  attr_accessible :left_ovary_id
  attr_accessible :right_ovary_id
  attr_accessible :user_id
  attr_accessible :uterus_anteroposterior
  attr_accessible :uterus_length
  attr_accessible :uterus_transverse_size
  attr_accessible :findings_and_recommendations
end
