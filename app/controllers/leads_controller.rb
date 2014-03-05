class LeadsController < ApplicationController
  def landing
  create
  end

  def create
    @lead = Lead.create params[:lead].permit(:twitter)
    if @lead.save?
      flash[:success] = "We will Tweet @ you #{@lead.twitter_handle}"
    else
      flash[:notice] = "Twitter handle has been saved!"
    end
  end
end
