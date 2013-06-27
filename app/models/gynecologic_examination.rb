class GynecologicExamination < ActiveRecord::Base
  belongs_to :uterine_boundary
  attr_accessible :endometrial_thickness, :menstruation_date, :menstruation_day, :uterine_anteroposterior, :uterine_length, :uterine_width, :uterine_boundary_id, :uterine_boundary
end
