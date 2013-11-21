# encoding: UTF-8
class PregnancyTrimesterIExamination::Ovary < ActiveRecord::Base
  has_one :pregnancy_trimester_i_examination
  attr_accessible :is_visible
  attr_accessible :length
  attr_accessible :width
  attr_accessible :anteroposterior
  attr_accessible :is_yellow_body_present
  attr_accessible :yellow_body_diameter
  validate :check_attributes
  
  def check_attributes
    if is_visible
      if length.nil? || length == 0
        errors.add(:length, "Значение не задано или недопустимо.")
      end
      if width.nil? || width == 0
        errors.add(:width, "Значение не задано или недопустимо.")
      end
      if anteroposterior.nil? || anteroposterior == 0
        errors.add(:anteroposterior, "Значение не задано или недопустимо.")
      end
      if is_yellow_body_present
        if yellow_body_diameter.nil? || yellow_body_diameter == 0
          errors.add(:yellow_body_diameter, "Значение не задано или недопустимо.")
        end
      end
    end
  end
end
