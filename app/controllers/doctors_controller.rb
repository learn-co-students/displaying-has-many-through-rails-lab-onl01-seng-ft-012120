class DoctorsController < ApplicationController
    before_action :set_doctor, only: [:show, :edit]

    def index
        @doctors = Doctor.all
    end

    def new 
        @doctor = Doctor.new
    end

    def create
        @doctor = Doctor.create(doc_params)
        if @doctor.save
            redirect_to @doctor
        else
            render :new
        end
    end

    def show
    end

    def edit
    end

    def update
    end

    def destroy
    end

    private

    def doc_params
        params.require(:doctor).permit(:name, :department)
    end

    def set_doctor
        @doctor = Doctor.find(params[:id])
    end

end
