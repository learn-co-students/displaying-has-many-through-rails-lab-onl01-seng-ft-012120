class PatientsController < ApplicationController

    before_action :set_patient, only: [:show, :edit]

    def index
        @patients = Patient.all
    end
    
    def new
        @patient = Patient.new
    end
    
    def create
        @patient.create(patient_params)
        if @patient.save
            redirect_to @patient
        else
            render :new
        end

    end
    
    def show
    end
    
    def edit
    end
    
    private

    def patient_params
        params.require(:patient).permit(:name, :age)
    end

    def set_patient
        @patient = Patient.find(params[:id])
    end

end
