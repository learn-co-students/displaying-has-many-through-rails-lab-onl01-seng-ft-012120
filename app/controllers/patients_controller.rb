class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :edit]


  def new
    @patient = Patient.new
  end

  def index
    @patients = Patient.all
  end

  def edit
  end

  def create 
    @patient = Patient.new(patient_params)
    if @patient.save 
      redirect_to @patient
    else
      render :new 
    end
  end

  def show
  end

  private 

  def patient_params 
    params.require(:patient).permit(:name, :age)
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end

end
