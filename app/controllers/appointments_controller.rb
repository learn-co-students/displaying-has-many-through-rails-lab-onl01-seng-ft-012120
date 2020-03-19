class AppointmentsController < ApplicationController
    def show
        @appointment = Appointment.all.find_by(id: params[:id])
    end
end