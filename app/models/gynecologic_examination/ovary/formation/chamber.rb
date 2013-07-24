class GynecologicExamination::Ovary::Formation::Chamber < ActiveRecord::Base
  belongs_to :formation
  belongs_to :inner_surface
  belongs_to :suspension
  
  attr_accessible :size
  attr_accessible :suspension_id
  attr_accessible :inner_surface_id
  attr_accessible :comment
end
