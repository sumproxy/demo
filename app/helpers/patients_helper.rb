module PatientsHelper
  def age(dob)
    now = Date.today
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end
  
  def format_name(person)
    [person.last_name, person.first_name, person.patronymic].join(' ')
  end
  
  def format_address(addr)
    [addr.city, 
   (!addr.city.empty? && !addr.street.empty? ? ', ' : '' ), 
     addr.street,
     addr.house,
   (!addr.house.empty? && !addr.appartment.nil? ? ', ' : '' ),
     addr.appartment].join(' ')
  end
end
