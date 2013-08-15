class GynecologicExamination::Ovary::Formation::Chamber::Suspension < ActiveRecord::Base
  has_many :chambers
  attr_accessible :value
end
