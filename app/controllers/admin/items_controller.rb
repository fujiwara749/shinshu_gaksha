class Admin::ItemsController < ApplicationController

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to items_path
  end

  def index
    @item = Item.page(params[:page]).reverse_order
  end

  def show
    @item = Item.find(params[:id])
    @reviews = @item.reviews
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to item_path(@item.id)
  end
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_tp items_path
  end

  private
  def item_params
    params.require(:item).permit(:item_name, :price, :sales_status, :image_id)
  end
end
