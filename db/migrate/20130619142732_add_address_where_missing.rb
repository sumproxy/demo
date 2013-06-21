# -*- encoding: utf-8 -*-
class AddAddressWhereMissing < ActiveRecord::Migration
  def up
    Patient.where(:address_id => nil).each do |patient|
      address = Address.create(:city => "Киров", :street => "", :house => "")
      address.save
      patient.address_id = address.id
      patient.phone = ""
      patient.save
    end
  end

  def down
  end
end
