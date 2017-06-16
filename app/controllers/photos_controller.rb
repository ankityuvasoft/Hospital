class PhotosController < ApplicationController
  before_action :authenticate_host!
  def index
  	@photos = Photo.all
  end
  def new
  	@photo = Photo.new
    @photos = Photo.all
  end
  def create
    debugger
  	@photo = Photo.new(photo_params)

  	if @photo.save
  		flash[:notice] = "Successfully added new photo!"
  		# redirect_to photos_path
  	else
  		flash[:alert] = "Error adding new photo!"
   		# render :new
   	end
  end
  def destroy
  	@photo = Photo.find(params[:id])
  	if @photo.destroy
  		flash[:notice] = "Successfully deleted photo!"
    	redirect_to photos_path
  	else
    	flash[:alert] = "Error deleting photo!"
  	end
  end
  private
  def photo_params
  	 params.require(:photo).permit(:title,:image)
    # params.require(:photo).permit(:title, {image: []})
  end
end