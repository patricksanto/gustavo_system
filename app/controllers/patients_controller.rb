class PatientsController < ApplicationController

  def new
    @patient = Patient.new
    authorize @patient
  end

  def create
    @patient = Patient.new(patient_params)
    authorize @patient
    @patient.save!

    redirect_to patient_path(@patient)
  end

  def show
    @patient = Patient.find(params[:id])
    authorize @patient
  end

  def edit
    authorize @patient
  end

  def update
    authorize @patient
  end

  def index
    # @patients = Patient.all
    @patients = policy_scope(Patient)
  end

  private

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :gender, :price)
  end
end
