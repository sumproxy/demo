# -*- encoding: utf-8 -*-
class SearchController < ApplicationController
  skip_before_filter :authorize_root
  def index
    if params[:term]
      args = params[:term].split
      4.times do |i|
        args[i] ||= ''
        args[i] += '%'
      end
      condition = 'last_name LIKE ? AND first_name LIKE ? AND patronymic LIKE ? AND dob LIKE ?'
      fields = [:id, :last_name, :first_name, :patronymic, :dob]
      result = Patient.select(fields).where(condition, *args).limit(5)
      @patients = []
      result.each do |item|
        @patients << {"id" => item.id, "label" => fields[1..-1].map{|f| item.send(f) }.join(' ') }
      end
    end
    
    respond_to do |format|
      format.html
      format.json { render :json => @patients }
    end
  end
  
  def street
    @streets = []
    @@streets_cache ||= YAML::load_file(Rails.root + 'db/streets.yml')
    if term = params[:term]
      re = Regexp.new(term)
      @streets = @@streets_cache.grep(re).first(5)
    end
    
    respond_to do |format|
      format.json { render :json => @streets }      
    end
  end
end
