# encoding: UTF-8
class PregnancyTrimesterIExamination < ActiveRecord::Base
  has_many :patient_examinations
  has_many :patients, :through => :patient_examinations
  has_many :ovums, :dependent => :destroy
  belongs_to :left_ovary, :class_name => "PregnancyTrimesterIExamination::Ovary", :dependent => :destroy
  belongs_to :right_ovary, :class_name => "PregnancyTrimesterIExamination::Ovary", :dependent => :destroy
  belongs_to :ovaries
  accepts_nested_attributes_for :ovums, :allow_destroy => true
  accepts_nested_attributes_for :left_ovary, :allow_destroy => true
  accepts_nested_attributes_for :right_ovary, :allow_destroy => true
  attr_accessible :comments
  attr_accessible :gestation_age_in_weeks
  attr_accessible :left_ovary_id, :left_ovary
  attr_accessible :right_ovary_id, :right_ovary
  attr_accessible :user_id
  attr_accessible :uterus_anteroposterior
  attr_accessible :uterus_length
  attr_accessible :uterus_transverse_size
  attr_accessible :findings_and_recommendations
  attr_accessible :ovums_attributes
  attr_accessible :left_ovary_attributes
  attr_accessible :right_ovary_attributes

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
