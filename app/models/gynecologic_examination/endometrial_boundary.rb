class GynecologicExamination::EndometrialBoundary < ActiveRecord::Base
  has_many :gynecologic_examinations
  attr_accessible :value
end
