class EntriesController < ApplicationController
  def index
  	@entries = Entry.all
  end
  def new
   	@entry = Entry.new
  end
  def create
 	  @entry = Entry.new
    @entry = Entry.new(params_detail)
    if @entry.save
		  redirect_to entries_path
    else
		  render 'new'
    end
  end
  private
  def params_detail
	 params.require(:entry).permit(:username,:description, :avatar)
  end
end
