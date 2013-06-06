class LiverCondition < ActiveRecord::Base
  has_many :patients
  attr_accessible :condition
end
