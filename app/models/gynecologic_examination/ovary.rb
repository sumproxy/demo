class GynecologicExamination::Ovary < ActiveRecord::Base
  has_one :gynecologic_examination
  belongs_to :visibility
  belongs_to :size
  belongs_to :structure
  attr_accessible :length, :thickness, :width, :visibility_id, :visibility, :size_id, :size, :structure_id, :structure
end
