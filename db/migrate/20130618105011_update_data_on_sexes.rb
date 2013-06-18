# -*- encoding: utf-8 -*-
class UpdateDataOnSexes < ActiveRecord::Migration
  def up
    m = Sex.find(1)
    m.value = "мужской"
    m.save
    f = Sex.find(2)
    f.value = "женский"
    f.save
  rescue ActiveRecord::RecordNotFound
    puts "База пуста"
  end

  def down
  end
end
