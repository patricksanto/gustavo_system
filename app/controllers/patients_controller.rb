class PatientsController < ApplicationController

  def new
    @patient = Patient.new
    authorize @patient
  end

  def create
    raise
  end

  private

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :gender, :price)
  end
end
