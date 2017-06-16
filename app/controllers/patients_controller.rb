class PatientsController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
    http_basic_authenticate_with name: "ankit", password: "123456", only: :show
  def index
  	@patients = Patient.all
  end
  def new
  	@patient = Patient.new
  end
  def create
  	@patient = Patient.new
  	@patient = Patient.new(params_detail)
  	if @patient.save
  		redirect_to patients_path
  	else
  		render 'new'
  	end
  end
  def show
  end
  def edit
  end
  def update
  	@patient.update(params_detail)
  	if @patient.save
  		redirect_to patients_path
  	else
  		render 'new'
  	end
  end
  def destroy
  	@patient.destroy
  	redirect_to patients_path
  end
  private
  def params_detail
  	params.require(:patient).permit!
  end
  def set_user
    @patient = Patient.find(params[:id])
  end

end
