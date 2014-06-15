# encoding: UTF-8
class PregnancyTrimesterIExamination::Ovum < ActiveRecord::Base
  belongs_to :pregnancy_trimester_i_examination
  belongs_to :localization
  has_many :fetuses, :dependent => :destroy
  accepts_nested_attributes_for :fetuses, :allow_destroy => true
  attr_accessible :localization_id, :localization
  attr_accessible :length
  attr_accessible :anteroposterior
  attr_accessible :median_inner_diameter
  attr_accessible :gestation_age_in_weeks
  attr_accessible :fetuses_attributes
  validate :check_attributes
  
  def check_attributes
    if length.nil? || length <= 0
      errors.add(:length, "Значение не задано или недопустимо")
    end
    if anteroposterior.nil? || anteroposterior <= 0
      errors.add(:anteroposterior, "Значение не задано или недопустимо")
    end
    if median_inner_diameter.nil? || median_inner_diameter <= 0
      errors.add(:median_inner_diameter, "Значение не задано или недопустимо")
    end
    if gestation_age_in_weeks.nil? || gestation_age_in_weeks <= 0
      errors.add(:gestation_age_in_weeks, "Значение не задано или недопустимо")
    end
  end
end
