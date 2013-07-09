class GynecologicExamination::Ovary < ActiveRecord::Base
  has_one :gynecologic_examination
  belongs_to :visibility
  belongs_to :size
  belongs_to :structure
  belongs_to :follicle, :dependent => :destroy
  accepts_nested_attributes_for :follicle, :allow_destroy => true
  attr_accessible :length
  attr_accessible :thickness
  attr_accessible :width
  attr_accessible :visibility_id, :visibility
  attr_accessible :size_id, :size
  attr_accessible :structure_id, :structure
  attr_accessible :follicle_id
  attr_accessible :is_follicle_visible
  attr_accessible :follicle_attributes
end