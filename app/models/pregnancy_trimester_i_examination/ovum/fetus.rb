# encoding: UTF-8
class PregnancyTrimesterIExamination::Ovum::Fetus < ActiveRecord::Base
  belongs_to :ovum
  attr_accessible :coccyx_parietal_size
  attr_accessible :biparietal_size
  attr_accessible :is_fetal_cardiac_activity_manifested
  attr_accessible :ovum_id
  validate :check_attributes
  
  def check_attributes
    if biparietal_size.nil? || biparietal_size == 0
      errors.add(:biparietal_size, 'Значение не задано или недопустимо.')
    end
    if coccyx_parietal_size.nil? || coccyx_parietal_size == 0
      errors.add(:coccyx_parietal_size, 'Значение не задано или недопустимо.')
    end
  end
end
