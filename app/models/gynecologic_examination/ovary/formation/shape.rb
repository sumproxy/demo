class GynecologicExamination::Ovary::Formation::Shape < ActiveRecord::Base
  has_many :formations
  attr_accessible :value
end
