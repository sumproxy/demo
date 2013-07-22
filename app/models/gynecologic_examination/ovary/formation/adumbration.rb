class GynecologicExamination::Ovary::Formation::Adumbration < ActiveRecord::Base
  has_many :formations
  attr_accessible :value
end
