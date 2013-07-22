# encoding: UTF-8
class GynecologicExamination::Ovary < ActiveRecord::Base
  has_one :gynecologic_examination
  belongs_to :visibility
  belongs_to :size
  belongs_to :structure
  belongs_to :follicle, :dependent => :destroy
  has_many :formations, :class_name => 'GynecologicExamination::Ovary::Formation', :dependent => :destroy
  accepts_nested_attributes_for :follicle, :allow_destroy => true
  accepts_nested_attributes_for :formations, :allow_destroy => true
  attr_accessible :length
  attr_accessible :thickness
  attr_accessible :width
  attr_accessible :visibility_id, :visibility
  attr_accessible :size_id, :size
  attr_accessible :structure_id, :structure
  attr_accessible :follicle_id
  attr_accessible :is_follicle_visible
  attr_accessible :follicle_attributes
  attr_accessible :formations_attributes

  validate :check_ovary_attributes
  validate :check_visible_follicle_amount
  validate :check_follicle_size_is_set
  
  def check_ovary_attributes
    if visibility.value == 'определяется'
      flag = false
      if length.nil? || length == 0
        errors.add(:length, "Значение не задано или недопустимо")
        flag = true
      end
      if thickness.nil? || thickness == 0
        errors.add(:thickness, "Значение не задано или недопустимо")
        flag = true
      end
      if width.nil? || width == 0
        errors.add(:width, "Значение не задано или недопустимо")
        flag = true
      end
      if structure.value == '-- не задано --'
        errors.add(:structure_id, "Не задано значение")
        flag = true
      end
      if size.value == '-- не задано --'
        errors.add(:size_id, "Не задано значение")
        flag = true
      end
      return false if flag
    end
    return true
  end
  
  def check_follicle_size_is_set
    if is_follicle_visible
      if follicle.amount !~ /^(\d+)(?:-([1-9]\d*))?$/
        errors.add(:follicle, "Недопустимый формат данных: #{follicle.amount} (правильно: число-число)")
        follicle.errors.add(:amount)
      end
      if follicle.amount =~ /^1$/ && (follicle.min_size.nil? && follicle.max_size.nil?)
        errors.add(:follicle, "Не задан размер")
        follicle.errors.add(:min_size)
        follicle.errors.add(:max_size)
        return false
      end
      if follicle.is_multiple? && (follicle.min_size.nil? || follicle.max_size.nil?)
        errors.add(:follicle, "Не задан размер")
        follicle.errors.add(:min_size) if follicle.min_size.nil?
        follicle.errors.add(:max_size) if follicle.max_size.nil?
        return false
      elsif follicle.is_multiple? && !follicle.min_size.nil? && !follicle.max_size.nil? && (follicle.min_size > follicle.max_size)
        errors.add(:follicle, "Минимальный размер не может превышать максимальный")
        follicle.errors.add(:min_size)
        follicle.errors.add(:max_size)
      end
    end
  end
  
  def check_visible_follicle_amount
    if is_follicle_visible && follicle.amount =~ /^0+$/
      errors.add(:follicle, "Количество не может быть равно нулю.")
      follicle.errors.add(:amount)
      return false
    end
  end
end