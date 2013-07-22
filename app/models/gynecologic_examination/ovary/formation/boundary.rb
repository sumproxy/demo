class GynecologicExamination::Ovary::Formation::Boundary < ActiveRecord::Base
  has_many :formations
  attr_accessible :value
end
