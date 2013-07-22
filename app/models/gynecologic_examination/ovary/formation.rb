class GynecologicExamination::Ovary::Formation < ActiveRecord::Base
  belongs_to :ovary
  belongs_to :adumbration
  belongs_to :boundary
  belongs_to :content
  belongs_to :structure
  belongs_to :shape
  attr_accessible :adumbration_id, :adumbration
  attr_accessible :boundary_id, :boundary
  attr_accessible :content_id, :content
  attr_accessible :shape_id, :shape
  attr_accessible :size
  attr_accessible :structure_id, :structure
  attr_accessible :wall_thickness
  attr_accessible :comment
  
  validates :size, :numericality => {:greater_than => 0}
  validates :wall_thickness, :numericality => {:greater_than => 0}
end
