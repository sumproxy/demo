# encoding: UTF-8
class PregnancyTrimesterIExaminationsController < ApplicationController
  skip_before_filter :authorize_root, :only => [:show, :new, :edit, :create, :update]
  # GET /pregnancy_trimester_i_examinations
  # GET /pregnancy_trimester_i_examinations.json
  def index
    @pregnancy_trimester_i_examinations = PregnancyTrimesterIExamination.find(
      :all,
      :joins => [:patient_examinations, :patients],
      :order => ['patients.last_name, patients.first_name, patients.patronymic, patients.dob', :created_at])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pregnancy_trimester_i_examinations }
    end
  end

  # GET /pregnancy_trimester_i_examinations/1
  # GET /pregnancy_trimester_i_examinations/1.json
  def show
    @pregnancy_trimester_i_examination = PregnancyTrimesterIExamination.find(params[:id])
    @patient = @pregnancy_trimester_i_examination.patients.first

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pregnancy_trimester_i_examination }
    end
  end

  # GET /pregnancy_trimester_i_examinations/new
  # GET /pregnancy_trimester_i_examinations/new.json
  def new
    @pregnancy_trimester_i_examination = PregnancyTrimesterIExamination.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pregnancy_trimester_i_examination }
    end
  end

  # GET /pregnancy_trimester_i_examinations/1/edit
  def edit
    @pregnancy_trimester_i_examination = PregnancyTrimesterIExamination.find(params[:id])
  end

  # POST /pregnancy_trimester_i_examinations
  # POST /pregnancy_trimester_i_examinations.json
  def create
    @pregnancy_trimester_i_examination = PregnancyTrimesterIExamination.new(params[:pregnancy_trimester_i_examination])
    @pregnancy_trimester_i_examination.user_id = session[:user_id]
    if params[:patient_id]
      respond_to do |format|
        if @pregnancy_trimester_i_examination.save
          PatientExamination.create(:patient_id => params[:patient_id], :pregnancy_trimester_i_examination_id => @pregnancy_trimester_i_examination.id).save
          format.html { redirect_to @pregnancy_trimester_i_examination, notice: 'Отчет успешно создан.' }
          format.json { render json: @pregnancy_trimester_i_examination, status: :created, location: @pregnancy_trimester_i_examination }
        else
          format.html { render action: "new" }
          format.json { render json: @pregnancy_trimester_i_examination.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to :root, notice: 'Невозможно создать отчет без привязки к пациенту. Для создания отчета используйте карту пациента.'
    end
  end

  # PUT /pregnancy_trimester_i_examinations/1
  # PUT /pregnancy_trimester_i_examinations/1.json
  def update
    @pregnancy_trimester_i_examination = PregnancyTrimesterIExamination.find(params[:id])

    respond_to do |format|
      if @pregnancy_trimester_i_examination.update_attributes(params[:pregnancy_trimester_i_examination])
        format.html { redirect_to @pregnancy_trimester_i_examination, notice: 'Данные отчета обновлены.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pregnancy_trimester_i_examination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pregnancy_trimester_i_examinations/1
  # DELETE /pregnancy_trimester_i_examinations/1.json
  def destroy
    @pregnancy_trimester_i_examination = PregnancyTrimesterIExamination.find(params[:id])
    @patient = @pregnancy_trimester_i_examination.patients.first
    PatientExamination.where(:pregnancy_trimester_i_examination_id => @pregnancy_trimester_i_examination.id).each {|exam| exam.destroy }
    @pregnancy_trimester_i_examination.destroy

    respond_to do |format|
      format.html { redirect_to patient_path(@patient) }
      format.json { head :no_content }
    end
  end
end
