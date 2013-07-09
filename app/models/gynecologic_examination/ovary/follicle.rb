class GynecologicExamination::Ovary::Follicle < ActiveRecord::Base
  has_one :ovary
  attr_accessible :amount, :max_size, :min_size
end
