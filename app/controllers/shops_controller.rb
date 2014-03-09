class ShopsController < ApplicationController
  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.create params[:shop].permit(:name, :address, :site, :phone, :wifi_up, :wifi_down, :outlet_rating, :hrs_wkday, :hrs_saturday, :hrs_sunday)
    if @shop.save
      flash[:success] = "data saved in the datebase bro"
      redirect_to root_path
    else
      flash[:error] = "data saved in the datebase bro"
      redirect_to root_path
    end

  end

  def show
    @shop = Shop.find params[:id]
  end
end
