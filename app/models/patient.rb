# -*- encoding: utf-8 -*-
class Patient < ActiveRecord::Base
  belongs_to :liver_condition
  attr_accessible :dob, :first_name, :last_name, :liver_condition_id, :patronymic
  validates_uniqueness_of :last_name, :scope => [:first_name, :patronymic, :dob], :message => 'Пациент с такими данными уже есть в базе'
end
