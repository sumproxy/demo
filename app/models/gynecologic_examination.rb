class GynecologicExamination < ActiveRecord::Base
  belongs_to :uterine_boundary
  belongs_to :uterine_adumbration
  belongs_to :uterine_shape
  belongs_to :uterine_size
  belongs_to :endometrial_boundary
  belongs_to :endometrial_adumbration
  belongs_to :endometrium_phase
  belongs_to :uterine_cavity_deformation
  belongs_to :uterine_cavity_size_change
  belongs_to :cervix_visibility
  belongs_to :cervix_structure_change
  belongs_to :left_ovary, :class_name => 'GynecologicExamination::Ovary', :dependent => :destroy
  belongs_to :right_ovary, :class_name => 'GynecologicExamination::Ovary', :dependent => :destroy
  belongs_to :ovaries
  belongs_to :uterine_body_visibility
  belongs_to :uterine_body_detection_position
  belongs_to :endometrium_echostructure_change
  belongs_to :endometrium_echostructure_change_type
  belongs_to :myometric_structure_change
  has_many :myometric_structure_nodes, :class_name => 'GynecologicExamination::MyometricStructureNode', :dependent => :destroy
  accepts_nested_attributes_for :myometric_structure_nodes, :allow_destroy => true
  has_many :endometrium_echostructure_hyperechoic_inclusions, :class_name => 'GynecologicExamination::EndometriumEchostructureHyperechoicInclusion', :dependent => :destroy
  accepts_nested_attributes_for :endometrium_echostructure_hyperechoic_inclusions, :allow_destroy => true
  has_many :patient_examinations
  has_many :patients, :through => :patient_examinations
  accepts_nested_attributes_for :left_ovary, :allow_destroy => true
  accepts_nested_attributes_for :right_ovary, :allow_destroy => true
  attr_accessible :endometrial_thickness
  attr_accessible :menstruation_date
  attr_accessible :menstruation_day
  attr_accessible :uterine_anteroposterior
  attr_accessible :uterine_length
  attr_accessible :uterine_width
  attr_accessible :uterine_boundary_id
  attr_accessible :uterine_boundary
  attr_accessible :uterine_adumbration_id
  attr_accessible :uterine_adumbration
  attr_accessible :uterine_shape_id
  attr_accessible :uterine_shape
  attr_accessible :uterine_size_id
  attr_accessible :uterine_size
  attr_accessible :endometrial_boundary_id
  attr_accessible :endometrial_boundary
  attr_accessible :endometrial_adumbration_id
  attr_accessible :endometrial_adumbration
  attr_accessible :endometrium_phase_id
  attr_accessible :endometrium_phase
  attr_accessible :uterine_cavity_deformation_id
  attr_accessible :uterine_cavity_deformation
  attr_accessible :uterine_cavity_size_change_id
  attr_accessible :uterine_cavity_size_change
  attr_accessible :cervix_visibility_id
  attr_accessible :cervix_visibility
  attr_accessible :cervix_structure_change_id
  attr_accessible :cervix_structure_change
  attr_accessible :left_ovary_id
  attr_accessible :left_ovary
  attr_accessible :right_ovary_id
  attr_accessible :right_ovary
  attr_accessible :left_ovary_attributes
  attr_accessible :right_ovary_attributes
  attr_accessible :uterine_body_visibility_id
  attr_accessible :uterine_body_visibility
  attr_accessible :uterine_body_detection_position_id
  attr_accessible :uterine_body_detection_position
  attr_accessible :myometric_structure_change_id
  attr_accessible :myometric_structure_change
  attr_accessible :myometric_structure_nodes_attributes
  attr_accessible :endometrium_echostructure_change_id
  attr_accessible :endometrium_echostructure_change
  attr_accessible :endometrium_echostructure_change_type_id
  attr_accessible :endometrium_echostructure_change_type
  attr_accessible :endometrium_echostructure_hyperechoic_inclusions_attributes
  attr_accessible :myometrium_anterior_wall_thickness
  attr_accessible :myometrium_posterior_wall_thickness
  attr_accessible :uterine_cavity_size
  attr_accessible :endocervix_cyst_min_size
  attr_accessible :endocervix_cyst_max_size
  attr_accessible :is_endocervix_cyst_multiple
  attr_accessible :cervix_size
  attr_accessible :is_cervix_of_normal_size
  attr_accessible :is_uterine_cavity_node_present
end
