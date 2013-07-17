# encoding: UTF-8
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
  attr_accessible :uterine_boundary_id, :uterine_boundary
  attr_accessible :uterine_adumbration_id, :uterine_adumbration
  attr_accessible :uterine_shape_id, :uterine_shape
  attr_accessible :uterine_size_id, :uterine_size
  attr_accessible :endometrial_boundary_id, :endometrial_boundary
  attr_accessible :endometrial_adumbration_id, :endometrial_adumbration
  attr_accessible :endometrium_phase_id, :endometrium_phase
  attr_accessible :uterine_cavity_deformation_id, :uterine_cavity_deformation
  attr_accessible :uterine_cavity_size_change_id, :uterine_cavity_size_change
  attr_accessible :cervix_visibility_id, :cervix_visibility
  attr_accessible :cervix_structure_change_id, :cervix_structure_change
  attr_accessible :left_ovary_id, :left_ovary
  attr_accessible :right_ovary_id, :right_ovary
  attr_accessible :left_ovary_attributes
  attr_accessible :right_ovary_attributes
  attr_accessible :uterine_body_visibility_id, :uterine_body_visibility
  attr_accessible :uterine_body_detection_position_id, :uterine_body_detection_position
  attr_accessible :myometric_structure_change_id, :myometric_structure_change
  attr_accessible :myometric_structure_nodes_attributes
  attr_accessible :endometrium_echostructure_change_id, :endometrium_echostructure_change
  attr_accessible :endometrium_echostructure_change_type_id, :endometrium_echostructure_change_type
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
  
  validate :uterine_attributes
  
  def uterine_attributes
    if uterine_body_visibility.value == 'определяется'
      
      # эндометрий
      if endometrium_echostructure_change.value == '-- не задано --'
        errors.add(:endometrium_echostructure_change_id, "Необходимо указать изменена ли эхоструктура эндометрия")
        errors.add(:endometrium_echostructure_change, "Необходимо указать изменена ли эхоструктура эндометрия")
      end
      if endometrium_echostructure_change.value == 'изменена' && endometrium_echostructure_change_type.value == '-- не задано --'
        errors.add(:endometrium_echostructure_change_type_id, "Необходимо задать характер изменений эхоструктуры эндометрия")
        errors.add(:endometrium_echostructure_change_type, "Необходимо задать характер изменений эхоструктуры эндометрия")
      end
      if endometrium_phase.value == '-- не задано --'
        errors.add(:endometrium_phase_id, "Необходимо указать соответствие эндометрия фазе цикла")
        errors.add(:endometrium_phase, "Необходимо указать соответствие эндометрия фазе цикла")
      end
      if endometrial_boundary.value == '-- не задано --'
        errors.add(:endometrial_boundary_id, "Необходимо описать границы эндометрия")
        errors.add(:endometrial_boundary, "Необходимо описать границы эндометрия")
      end
      if endometrial_adumbration.value == '-- не задано --'
        errors.add(:endometrial_adumbration_id, "Необходимо описать контуры эндометрия")
        errors.add(:endometrial_adumbration, "Необходимо описать контуры эндометрия")
      end
      if endometrial_thickness.nil? || endometrial_thickness == 0
        errors.add(:endometrial_thickness, "Необходимо указать толщину эндометрия")
      end
      
      # полость матки
      if uterine_cavity_deformation.value == '-- не задано --'
        errors.add(:uterine_cavity_deformation_id, "Необходимо указать деформирована ли полость матки")
        errors.add(:uterine_cavity_deformation, "Необходимо указать деформирована ли полость матки")
      end
      if uterine_cavity_size_change.value == '-- не задано --'
        errors.add(:uterine_cavity_size_change_id, "Необходимо указать расширена ли полость матки")
        errors.add(:uterine_cavity_size_change, "Необходимо указать расширена ли полость матки")
      end
      if uterine_cavity_size.nil?
        errors.add(:uterine_cavity_size, "Необходимо задать размеры полости матки")
      end

      # шейка
      if cervix_visibility.value == 'определяется' 
        errors.add(:cervix_size, "Необходимо указать размер") if cervix_size.nil? || cervix_size == 0
        if cervix_structure_change.value == '-- не задано --'
          errors.add(:cervix_structure_change_id, "Необходимо указать изменена ли структура шейки")
          errors.add(:cervix_structure_change, "Необходимо указать изменена ли структура шейки")
        end
        if cervix_structure_change.value == 'изменена'
          if (endocervix_cyst_min_size.nil? || endocervix_cyst_min_size == 0 ) && 
             (endocervix_cyst_max_size.nil? || endocervix_cyst_max_size == 0 )
            errors.add(:endocervix_cyst_min_size, "Необходимо указать размер кисты эндоцервикса")
            errors.add(:endocervix_cyst_max_size, "Необходимо указать размер кисты эндоцервикса")
          end
          if (!endocervix_cyst_min_size.nil? && !endocervix_cyst_max_size.nil? )
            if endocervix_cyst_min_size > endocervix_cyst_max_size
              errors.add(:endocervix_cyst_min_size, "Минимальный размер кисты эндоцервикса не может превышать максимальный")
              errors.add(:endocervix_cyst_max_size, "Минимальный размер кисты эндоцервикса не может превышать максимальный")
            end
          end
        end
      end
    end
  end
end
