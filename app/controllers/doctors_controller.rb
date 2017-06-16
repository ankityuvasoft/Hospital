class DoctorsController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  http_basic_authenticate_with name: "ankit", password: "123456", except: [:index]
  def index
  	@doctors = Doctor.all
  end
  def snadeep
  end
  def new
  	@doctor = Doctor.new
  end
  def create
  	@doctor = Doctor.new
  	@doctor = Doctor.new(params_detail)
  	if @doctor.save
  		redirect_to doctors_path
  	else
  		render 'new'
  	end
  end
  def show
  end
  def edit
  end
  def update
    @doctor.update(params_detail)
    if @doctor.save
      redirect_to doctors_path
    else
      render 'edit'
    end
  end
  def destroy
    @doctor.destroy
    redirect_to doctors_path
  end
  private
  def params_detail
  	# params.require(:doctor).permit!
     params.require(:doctor).permit(:name, :speciality, {avatars: []})
  end
  def set_user
    @doctor = Doctor.find(params[:id])
  end

  #def set_login
   #self.login = self.name
  #end
end
