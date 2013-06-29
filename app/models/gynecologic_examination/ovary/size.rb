class GynecologicExamination::Ovary::Size < ActiveRecord::Base
  has_many :ovaries
  attr_accessible :value
end
