class AppointmentsController < ApplicationController
  def index
  	@appointments = Appointment.all
  end
  def new
  	@appointment = Appointment.new
  end
  def create
  	@appointment = Appointment.new
  	@appointment = Appointment.new(params_detail)
  	if @appointment.save
  		redirect_to appointments_path
  	else
  		render 'new'
  	end
  end
  def show
    @appointment = Appointment.find(params[:id])
  end
  def edit
    @appointment = Appointment.find(params[:id])
  end
  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(params_detail)
    if @appointment.save
      redirect_to appointments_path
    else
      render 'edit'
    end
  end
  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to appointments_path
  end
  private
  def params_detail
  	params.require(:appointment).permit!
  	#params.require(:appointment).permit(:doctor_id,:patient_id, :date patients_attributes: [:name ,doctors_attributes: [:name]] )
  end
end
#params.require(:physician).permit(:name, appointments_attributes: [:name, :appointmentdate, patient_attributes: [:name]] )