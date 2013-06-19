class AddAddressWhereMissing < ActiveRecord::Migration
  def up
    Patient.all.each do |patient|
      if patient.address.nil?
        address = Address.create(:city)
        address.save
        patient.build_address(:address_id => address.id)
        patient.save
      end
    end
  end

  def down
  end
end
