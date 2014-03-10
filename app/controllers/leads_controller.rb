class LeadsController < ApplicationController
  def landing
    @lead = Lead.new
    @shops = Shop.all
  end

  def create
    @lead = Lead.create params[:lead].permit(:twitter_handle)
    if @lead.save
      flash[:success] = "We will Tweet @ you #{@lead.twitter_handle}"
      redirect_to shops_index_path
    else
      flash[:success] = "Make sure you acutally add something!"
      redirect_to root_path

    end
  end
end
