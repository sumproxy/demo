class PregnancyTrimesterIExamination::Ovum::Localization < ActiveRecord::Base
  has_many :ovums
  attr_accessible :value
end
