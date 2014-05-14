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
  belongs_to :free_fluid_amount
  has_many :myometric_structure_nodes, :class_name => 'GynecologicExamination::MyometricStructureNode', :dependent => :destroy
  accepts_nested_attributes_for :myometric_structure_nodes, :allow_destroy => true
  has_many :endometrium_echostructure_hyperechoic_inclusions, :class_name => 'GynecologicExamination::EndometriumEchostructureHyperechoicInclusion', :dependent => :destroy
  accepts_nested_attributes_for :endometrium_echostructure_hyperechoic_inclusions, :allow_destroy => true
  has_many :patient_examinations
  has_many :patients, :through => :patient_examinations
  accepts_nested_attributes_for :left_ovary, :allow_destroy => true
  accepts_nested_attributes_for :right_ovary, :allow_destroy => true
  attr_accessible :menstruation_date
  attr_accessible :menstruation_day
  attr_accessible :uterine_body_visibility_id, :uterine_body_visibility
  attr_accessible :uterine_body_detection_position_id, :uterine_body_detection_position
  attr_accessible :uterine_boundary_id, :uterine_boundary
  attr_accessible :uterine_adumbration_id, :uterine_adumbration
  attr_accessible :uterine_shape_id, :uterine_shape
  attr_accessible :uterine_size_id, :uterine_size
  attr_accessible :uterine_length
  attr_accessible :uterine_anteroposterior
  attr_accessible :uterine_width
  attr_accessible :uterine_volume
  attr_accessible :myometric_structure_change_id, :myometric_structure_change
  attr_accessible :myometric_structure_nodes_attributes
  attr_accessible :myometrium_anterior_wall_thickness
  attr_accessible :myometrium_posterior_wall_thickness
  attr_accessible :endometrium_echostructure_change_id, :endometrium_echostructure_change
  attr_accessible :endometrial_thickness
  attr_accessible :endometrial_boundary_id, :endometrial_boundary
  attr_accessible :endometrial_adumbration_id, :endometrial_adumbration
  attr_accessible :endometrium_phase_id, :endometrium_phase
  attr_accessible :endometrium_echostructure_change_type_id, :endometrium_echostructure_change_type
  attr_accessible :endometrium_echostructure_hyperechoic_inclusions_attributes
  attr_accessible :uterine_cavity_deformation_id, :uterine_cavity_deformation
  attr_accessible :uterine_cavity_size_change_id, :uterine_cavity_size_change
  attr_accessible :uterine_cavity_size
  attr_accessible :is_uterine_cavity_node_present
  attr_accessible :cervix_visibility_id, :cervix_visibility
  attr_accessible :cervix_size
  attr_accessible :is_cervix_of_normal_size
  attr_accessible :cervix_structure_change_id, :cervix_structure_change
  attr_accessible :endocervix_cyst_min_size
  attr_accessible :endocervix_cyst_max_size
  attr_accessible :is_endocervix_cyst_multiple
  attr_accessible :left_ovary_id, :left_ovary
  attr_accessible :right_ovary_id, :right_ovary
  attr_accessible :left_ovary_attributes
  attr_accessible :right_ovary_attributes
  attr_accessible :is_pathologic_formation_present
  attr_accessible :is_free_fluid_present
  attr_accessible :free_fluid_amount_id, :free_fluid_amount
  attr_accessible :report

  validate :uterine_attributes

  def uterine_attributes
    if uterine_body_visibility.value == 'определяется'
      # дата последней менструации
      if !menstruation_date.nil? && menstruation_day.nil?
        errors.add(:menstruation_day, "Не задано значение")
      end
      if menstruation_date > Date.today
        errors.add(:menstruation_date, "не может быть больше текущей")
      end

      # тело матки
      if uterine_body_detection_position.value == '-- не задано --'
        errors.add(:uterine_body_detection_position_id, "Не задано значение")
      end
      if uterine_boundary.value == '-- не задано --'
        errors.add(:uterine_boundary_id, "Не задано значение")
      end
      if uterine_adumbration.value == '-- не задано --'
        errors.add(:uterine_adumbration_id, "Не задано значение")
      end
      if uterine_shape.value == '-- не задано --'
        errors.add(:uterine_shape_id, "Не задано значение")
      end
      if uterine_size.value == '-- не задано --'
        errors.add(:uterine_size_id, "Не задано значение")
      end
      if uterine_length.nil? || uterine_length == 0
        errors.add(:uterine_length, "Значение не задано или недопустимо")
      end
      if uterine_anteroposterior.nil? || uterine_anteroposterior == 0
        errors.add(:uterine_anteroposterior, "Значение не задано или недопустимо")
      end
      if uterine_width.nil? || uterine_width == 0
        errors.add(:uterine_width, "Значение не задано или недопустимо")
      end
      if uterine_volume.nil? || uterine_volume == 0
        errors.add(:uterine_volume, "Значение не задано или недопустимо")
      end
      if uterine_cavity_size_change.value == 'расширена'
        if uterine_cavity_size.nil? && !is_uterine_cavity_node_present
          errors.add(:uterine_cavity_size, "Не задано значение")
          errors.add(:is_uterine_cavity_node_present, "Не задано значение")
        end
      end

      # миометрий
      if myometric_structure_change.value == 'изменена'
        if myometrium_anterior_wall_thickness.nil? || myometrium_anterior_wall_thickness == 0
          errors.add(:myometrium_anterior_wall_thickness, "Значение не задано или недопустимо")
        end
        if myometrium_posterior_wall_thickness.nil? || myometrium_posterior_wall_thickness == 0
          errors.add(:myometrium_posterior_wall_thickness, "Значение не задано или недопустимо")
        end
      end

      # эндометрий
      if endometrium_echostructure_change.value == '-- не задано --'
        errors.add(:endometrium_echostructure_change_id, "Не задано значение")
      end
      if endometrium_echostructure_change.value == 'изменена' && endometrium_echostructure_change_type.value == '-- не задано --'
        errors.add(:endometrium_echostructure_change_type_id, "Не задано значение")
      end
      if endometrium_phase.value == '-- не задано --'
        errors.add(:endometrium_phase_id, "Не задано значение")
      end
      if endometrial_boundary.value == '-- не задано --'
        errors.add(:endometrial_boundary_id, "Не задано значение")
      end
      if endometrial_adumbration.value == '-- не задано --'
        errors.add(:endometrial_adumbration_id, "Не задано значение")
      end
      if endometrial_thickness.nil? || endometrial_thickness == 0
        errors.add(:endometrial_thickness, "Не задано значение")
      end

      # полость матки
      if uterine_cavity_deformation.value == '-- не задано --'
        errors.add(:uterine_cavity_deformation_id, "Не задано значение")
      end
      if uterine_cavity_size_change.value == '-- не задано --'
        errors.add(:uterine_cavity_size_change_id, "Не задано значение")
      end

      # шейка
      if cervix_visibility.value == 'определяется'
        if cervix_size.nil? || cervix_size == 0
          errors.add(:cervix_size, "Значение не задано или недопустимо")
        end
        if cervix_structure_change.value == '-- не задано --'
          errors.add(:cervix_structure_change_id, "Не задано значение")
        end
        if cervix_structure_change.value == 'изменена'
          if (endocervix_cyst_min_size.nil? || endocervix_cyst_min_size == 0 ) &&
             (endocervix_cyst_max_size.nil? || endocervix_cyst_max_size == 0 )
            errors.add(:endocervix_cyst_min_size, "Значение не задано или недопустимо")
            errors.add(:endocervix_cyst_max_size, "Значение не задано или недопустимо")
          end
          if (!endocervix_cyst_min_size.nil? && !endocervix_cyst_max_size.nil? )
            if endocervix_cyst_min_size > endocervix_cyst_max_size
              errors.add(:endocervix_cyst_min_size, "Минимальный размер не может превышать максимальный")
              errors.add(:endocervix_cyst_max_size, "Минимальный размер не может превышать максимальный")
            end
          end
        end
      end
    end
  end
end
