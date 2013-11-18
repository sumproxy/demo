# encoding: UTF-8
class PatientExamination < ActiveRecord::Base
  belongs_to :patient
  belongs_to :gynecologic_examination
  belongs_to :pregnancy_trimester_i_examination
  attr_accessible :patient_id
  attr_accessible :gynecologic_examination_id
  attr_accessible :pregnancy_trimester_i_examination_id
  
  def examination_type
    examinations = PatientExamination.reflections.collect{|k,v| k if v.macro == :belongs_to}
    examinations.delete(:patient)
    examinations.each do |exam|
      return exam unless self.send((exam.to_s + "_id").to_sym).nil?
    end
  end

  def examination
    self.send(examination_type)
  end
end
