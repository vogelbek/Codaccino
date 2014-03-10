class ShopsController < ApplicationController
  before_action :set_shop, only: [:edit, :show, :update, :destroy]
  before_action :authenticate_admin!, except: [:show, :index]

  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create
    @shop = Shop.create params[:shop].permit  :name,
                                              :address,
                                              :site,
                                              :phone,
                                              :wifi_up,
                                              :wifi_down,
                                              :outlet_rating,
                                              :hrs_wkday,
                                              :hrs_saturday,
                                              :hrs_sunday,
                                              :shop_image,
                                              :shop_image_cache
    if @shop.save
      flash[:success] = "data saved in the datebase bro"
      redirect_to root_path
    else
      flash[:error] = "Shop not saved in the database bro... Try again"
      redirect_to root_path
    end

  end

  def update
    if @shop.update_attributes(shop_params)
      flash[:success] = "You've updated the coffeeshop info!"
      redirect_to @shop
      # redirect_to root_path
    else
      flash[:error] = "something went wrong. Try again"
      redirect_to @shop

    end
  end

  def destroy
    @shop.destroy
    flash[:success] = "Good riddens... We hope!"
    redirect_to root_path

  end
private

  def set_shop
    @shop = Shop.find(params[:id])
  end
  def shop_params
    params.require(:shop).permit  :name,
                                  :address,
                                  :site,
                                  :phone,
                                  :wifi_up,
                                  :wifi_down,
                                  :outlet_rating,
                                  :hrs_wkday,
                                  :hrs_saturday,
                                  :hrs_sunday
  end

end

