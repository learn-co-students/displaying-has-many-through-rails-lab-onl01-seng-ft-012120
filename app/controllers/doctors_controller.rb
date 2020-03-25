class DoctorsController < ApplicationController
  before_action :set_doctor, only: [:show, :edit]


  def new
    @doctor = Doctor.new
  end

  def index
    @doctors = Doctor.all
  end

  def edit
  end

  def create 
    @doctor = Doctor.new(doctor_params)
    if @doctor.save 
      redirect_to @doctor
    else
      render :new 
    end
  end

  def show
  end

  private 

  def doctor_params 
    params.require(:doctor).permit(:name, :department, appointment_attributes: [:appointment_datetime, :patient_name])
  end

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end


end
