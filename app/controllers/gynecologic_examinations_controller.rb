# encoding: UTF-8
class GynecologicExaminationsController < ApplicationController
  # GET /gynecologic_examinations
  # GET /gynecologic_examinations.json
  def index
    @gynecologic_examinations = GynecologicExamination.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @gynecologic_examinations }
    end
  end

  # GET /gynecologic_examinations/1
  # GET /gynecologic_examinations/1.json
  def show
    @gynecologic_examination = GynecologicExamination.find(params[:id])
    @patient = @gynecologic_examination.patients.first

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @gynecologic_examination }
    end
  end

  # GET /gynecologic_examinations/new
  # GET /gynecologic_examinations/new.json
  def new
    @gynecologic_examination = GynecologicExamination.new
    @gynecologic_examination.build_left_ovary
    @gynecologic_examination.build_right_ovary

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @gynecologic_examination }
    end
  end

  # GET /gynecologic_examinations/1/edit
  def edit
    @gynecologic_examination = GynecologicExamination.find(params[:id])
  end

  # POST /gynecologic_examinations
  # POST /gynecologic_examinations.json
  def create
    @gynecologic_examination = GynecologicExamination.new(params[:gynecologic_examination])
    if params[:patient_id]
      respond_to do |format|
        if @gynecologic_examination.save
          PatientExamination.create(:patient_id => params[:patient_id], :gynecologic_examination_id => @gynecologic_examination.id).save
          format.html { redirect_to @gynecologic_examination, notice: 'Gynecologic examination was successfully created.' }
          format.json { render json: @gynecologic_examination, status: :created, location: @gynecologic_examination }
        else
          format.html { render action: "new" }
          format.json { render json: @gynecologic_examination.errors, status: :unprocessable_entity }
        end
      end
    else
      redirect_to :root, notice: 'Невозможно создать отчет без привязки к пациенту. Для создания отчета используйте карту пациента.'
    end
  end

  # PUT /gynecologic_examinations/1
  # PUT /gynecologic_examinations/1.json
  def update
    @gynecologic_examination = GynecologicExamination.find(params[:id])

    respond_to do |format|
      if @gynecologic_examination.update_attributes(params[:gynecologic_examination])
        format.html { redirect_to @gynecologic_examination, notice: 'Gynecologic examination was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @gynecologic_examination.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gynecologic_examinations/1
  # DELETE /gynecologic_examinations/1.json
  def destroy
    @gynecologic_examination = GynecologicExamination.find(params[:id])
    PatientExamination.where(:gynecologic_examination_id => @gynecologic_examination.id).each {|exam| exam.destroy }
    @gynecologic_examination.destroy

    respond_to do |format|
      format.html { redirect_to gynecologic_examinations_url }
      format.json { head :no_content }
    end
  end
end
