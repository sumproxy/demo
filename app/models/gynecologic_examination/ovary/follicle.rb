# encoding: UTF-8
class GynecologicExamination::Ovary::Follicle < ActiveRecord::Base
  has_one :ovary
  attr_accessible :amount, :max_size, :min_size
  validates :amount, :format => {:with => /^(\d+)(?:-([1-9]\d*))?$/, :message => "Недопустимый формат данных: %{value} (правильно: число-число)"}
  
  def is_multiple?
    amount =~ /(\d+)(?:-([1-9]\d*))?/
    if ($1.to_i > 1) || (!$2.nil? && $2.to_i > 1)
      return true
    end
    return false
  end
  
  def amount_to_i
    amount =~ /(\d+)(?:-([1-9]\d*))?/
    ( $2.nil? )? $1.to_i : $2.to_i
  end
end
