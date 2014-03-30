class DynamicRatingController < ApplicationController
  def new
    @dynamic_rating = DynamicRating.new

  end

  def create
    @dynamic_rating = DynamicRating.new

  end



  def dynamic_rating_params
    params.require(:dynamic_rating).permit
                                  :noise,
                                  :wifi_up,
                                  :wifi_down
  end
end
