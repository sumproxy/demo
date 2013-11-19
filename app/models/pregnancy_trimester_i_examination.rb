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

  validate :uterine_attributes
  
  def uterine_attributes
    if gestation_age_in_weeks.nil? || gestation_age_in_weeks == 0
      errors.add(:gestation_age_in_weeks, "Значение не задано или недопустимо")
    end
    if uterus_anteroposterior.nil? || uterus_anteroposterior == 0
      errors.add(:uterus_anteroposterior, "Значение не задано или недопустимо")
    end
    if uterus_length.nil? || uterus_length == 0
      errors.add(:uterus_length, "Значение не задано или недопустимо")
    end
    if uterus_transverse_size.nil? || uterus_transverse_size == 0
      errors.add(:uterus_transverse_size, "Значение не задано или недопустимо")
    end
  end
end
