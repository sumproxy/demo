class GynecologicExamination < ActiveRecord::Base
  belongs_to :uterine_boundary
  belongs_to :uterine_adumbration
  belongs_to :uterine_shape
  belongs_to :uterine_size
  belongs_to :endometrial_boundary
  belongs_to :endometrial_adumbration
  belongs_to :endometrium_phase
  belongs_to :uterine_cavity_deformation
  belongs_to :uterine_cavity_size
  belongs_to :cervix_visibility
  belongs_to :cervix_size
  belongs_to :cervix_structure_change
  attr_accessible :endometrial_thickness, :menstruation_date, :menstruation_day, :uterine_anteroposterior, :uterine_length, :uterine_width, :uterine_boundary_id, :uterine_boundary, :uterine_adumbration_id, :uterine_adumbration, :uterine_shape_id, :uterine_shape, :uterine_size_id, :uterine_size, :endometrial_boundary_id, :endometrial_boundary, :endometrial_adumbration_id, :endometrial_adumbration, :endometrium_phase_id, :endometrium_phase, :uterine_cavity_deformation_id, :uterine_cavity_deformation, :uterine_cavity_size_id, :uterine_cavity_size, :cervix_visibility_id, :cervix_visibility, :cervix_size_id, :cervix_size, :cervix_structure_change_id, :cervix_structure_change
end
