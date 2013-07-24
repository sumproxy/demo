class GynecologicExamination::Ovary::Formation < ActiveRecord::Base
  belongs_to :ovary
  belongs_to :adumbration
  belongs_to :boundary
  belongs_to :content
  belongs_to :structure
  belongs_to :shape
  
  has_many :chambers, :class_name => 'GynecologicExamination::Ovary::Formation::Chamber', :dependent => :destroy
  accepts_nested_attributes_for :chambers, :allow_destroy => true
  
  attr_accessible :adumbration_id, :adumbration
  attr_accessible :boundary_id, :boundary
  attr_accessible :content_id, :content
  attr_accessible :shape_id, :shape
  attr_accessible :size
  attr_accessible :structure_id, :structure
  attr_accessible :wall_thickness
  attr_accessible :comment
  attr_accessible :chambers_attributes
  
  #validates :size, :numericality => {:greater_than => 0}
  #validates :wall_thickness, :numericality => {:greater_than => 0}
end
