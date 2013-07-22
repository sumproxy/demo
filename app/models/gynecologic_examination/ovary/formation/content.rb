class GynecologicExamination::Ovary::Formation::Content < ActiveRecord::Base
  has_many :formations
  attr_accessible :value
end
