class GynecologicExamination::MyometricStructureNode < ActiveRecord::Base
  belongs_to :gynecologic_examination
  belongs_to :depth_localization
  belongs_to :localization
  attr_accessible :depth_localization_id, :gynecologic_examination_id, :localization_id, :size
end
