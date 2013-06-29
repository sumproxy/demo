class GynecologicExamination::Ovary::Structure < ActiveRecord::Base
  has_many :ovaries
  attr_accessible :value
end
