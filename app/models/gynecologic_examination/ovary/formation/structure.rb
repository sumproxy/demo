class GynecologicExamination::Ovary::Formation::Structure < ActiveRecord::Base
  has_many :formations
  attr_accessible :value
end
