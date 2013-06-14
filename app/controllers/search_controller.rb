# -*- encoding: utf-8 -*-
class SearchController < ApplicationController
  def index
    if params[:term]
      args = params[:term].split
      4.times do |i|
        args[i] ||= ''
        args[i] += '%'
      end
      condition = 'last_name LIKE ? and first_name LIKE ? and patronymic LIKE ? and dob LIKE ?'
      @patients = Patient.where(condition, *args).limit(5)
    end
    
    respond_to do |format|
      format.html
      format.json { render :json => @patients }
    end
  end
end
