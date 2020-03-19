class DoctorsController < ApplicationController
    def new

    end

    def show
        @doctor = Doctor.all.find_by(id: params[:id])
        @appointments = @doctor.appointments
    end
end