class PatientsController < ApplicationController
    def show
        set_patient
    end

    def index
        @patients = Patient.all 
    end


    private
        def set_patient
            @patient = Patient.find(params[:id])
        end
end