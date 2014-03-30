class DynamicRatingsController < ApplicationController

  before_filter :set_shop

  def new
    @dynamic_rating = @shop.dynamic_ratings.build
  end

  def create
    @dynamic_rating = @shop.dynamic_ratings.build dynamic_rating_params.merge!(admin: current_admin)
    if @dynamic_rating.save!
      flash[:success] = "rating saved"
      redirect_to @shop
    else
      flash[:error] = "Shop not saved in the database bro... Try again"
      redirect_to root_path
    end

  end


  private

  def set_shop
    @shop = Shop.find params[:shop_id]
  end

  def dynamic_rating_params
    params.require(:dynamic_rating).permit [
                                  :noise,
                                  :wifi_up,
                                  :wifi_down]
  end
end
