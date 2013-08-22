class GynecologicExamination::Ovary::Formation::Chamber < ActiveRecord::Base
  belongs_to :formation
  belongs_to :inner_surface
  belongs_to :suspension
  
  attr_accessible :size
  attr_accessible :suspension_id, :suspension
  attr_accessible :inner_surface_id, :inner_surface
  attr_accessible :comment
  
  validates :size, :numericality => {:greater_than => 0}
end
