class GynecologicExamination::Ovary::Visibility < ActiveRecord::Base
  has_many :ovaries
  attr_accessible :value
end
