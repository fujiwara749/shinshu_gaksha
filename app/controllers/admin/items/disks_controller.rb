class Admin::Items::DisksController < ApplicationController
  def new
    @disk = Disk.new
  end

  def create
    @disk = Disk.new(params[:id])
    @disk.save
    redirect_to new_admin_item_path
  end

def destroy
  @disk = Disk.find(params[:id])
  @disk.destroy
  redirect_to new_admin_item_path
end

private
  def disk_params
  	  params.require(:disk).permit(:disk_number)
  end
end
