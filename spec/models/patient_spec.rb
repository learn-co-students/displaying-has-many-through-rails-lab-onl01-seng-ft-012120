require 'rails_helper'

describe 'Patient' do

  before do
    @patient = Patient.create(name: "Russell Wilson", age: 27)
    @mcdreamy = Doctor.create(name: "Derek Shepherd", department: "Neurosurgery")
    @meredith = Doctor.create(name: "Meredith Grey", department: "Internal Medicine")
    @appointment1 = Appointment.create(appointment_datetime: DateTime.new(2016, 10, 1), doctor: @mcdreamy, patient: @patient  )
    @appointment2 = Appointment.create(appointment_datetime: DateTime.new(2016, 10, 1), doctor: @meredith, patient: @patient  )
  end


end
