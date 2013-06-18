# -*- encoding: utf-8 -*-
class Patient < ActiveRecord::Base
  belongs_to :sex
  attr_accessible :dob, :first_name, :last_name, :sex_id, :patronymic
  validates :last_name, :first_name, :patronymic, :dob, :presence => true
  validates_uniqueness_of :last_name, :scope => [:first_name, :patronymic, :dob], :message => 'Пациент с такими данными уже есть в базе'
  validate :dob_check

  def dob_check
    today = Date.today
    unless dob.nil?
      if today - 113.years < dob and dob < today
        return true
      else
        errors.add(:dob, "Дата рождения вне диапазона: #{today - 113.years} - #{today}")
        return false
      end
    end
  end
end
