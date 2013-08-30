module ApplicationHelper
  def age(dob)
    now = Date.today
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end
  
  def format_name(person, options={})
    if options.blank?
      options[:format] = :full
    end
    case options[:format]
    when :full
      [person.last_name, person.first_name, person.patronymic].join(' ')
    when :abbr
      [person.last_name, person.first_name[0] + '.', person.patronymic[0] + '.' ].join(' ')
    end
  end
  
  def current_user
    User.find_by_id(session[:user_id])
  end
end
