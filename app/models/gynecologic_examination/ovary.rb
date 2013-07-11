# encoding: UTF-8
class GynecologicExamination::Ovary < ActiveRecord::Base
  has_one :gynecologic_examination
  belongs_to :visibility
  belongs_to :size
  belongs_to :structure
  belongs_to :follicle, :dependent => :destroy
  accepts_nested_attributes_for :follicle, :allow_destroy => true
  attr_accessible :length
  attr_accessible :thickness
  attr_accessible :width
  attr_accessible :visibility_id, :visibility
  attr_accessible :size_id, :size
  attr_accessible :structure_id, :structure
  attr_accessible :follicle_id
  attr_accessible :is_follicle_visible
  attr_accessible :follicle_attributes

  validate :check_visible_follicle_amount
  validate :check_follicle_size_is_set
  
  def check_follicle_size_is_set
    if is_follicle_visible
      if follicle.amount =~ /^1$/ && (follicle.min_size.nil? && follicle.max_size.nil?)
        errors.add(:follicle, "Не задан размер фолликула")
        follicle.errors.add(:min_size)
        follicle.errors.add(:max_size)
        return false
      end
      if follicle.is_multiple? && (follicle.min_size.nil? || follicle.max_size.nil?)
        errors.add(:follicle, "Не задан размер фолликула")
        follicle.errors.add(:min_size) if follicle.min_size.nil?
        follicle.errors.add(:max_size) if follicle.max_size.nil?
        return false
      end
    end
  end
  
  def check_visible_follicle_amount
    if is_follicle_visible && follicle.amount =~ /^0+$/
      errors.add(:follicle, "Число определяемых фолликулов не может быть равно нулю.")
      follicle.errors.add(:amount)
      return false
    end
  end
end