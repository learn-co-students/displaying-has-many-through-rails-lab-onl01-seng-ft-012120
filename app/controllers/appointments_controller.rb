class AppointmentsController < ApplicationController

    def new
    end
    
    def show
        @appt = Appointment.find(params[:id])
    end
    
    def edit
    end

end
