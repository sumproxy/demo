class GynecologicExamination::EndometriumEchostructureHyperechoicInclusion < ActiveRecord::Base
  belongs_to :gynecologic_examination
  belongs_to :localization
  attr_accessible :gynecologic_examination_id, :localization_id, :size, :comment
end
