class Admin::LabelsController < ApplicationController
    def new
        @label = Label.new
    end

    def index
        @labels = Label.all
    end

    def create
        @label = Label.new(label_params)
        if @label.save
           flash[:notice] = 'You have creatad label successfully..'
           redirect_to 'new_admin_item_path'
        else
           redirect_to 'new_admin_item_path'
	    end
    end

    def destroy
        @label = Label.find(params[:id])
        @label.destroy
        redirect_to 'admin_labels_path'
    end

    private
    def label_params
        params.require(:label).permit(:label_name)
    end
end
