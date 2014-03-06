class LeadsController < ApplicationController
  def landing
    @lead = Lead.new
  end

  def create
    @lead = Lead.create params[:lead].permit(:twitter_handle)
    if @lead.save
      flash[:success] = "We will Tweet @ you #{@lead.twitter_handle}"
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
end
