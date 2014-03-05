class LeadsController < ApplicationController
  def landing
  end

  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.create params[:lead].permit(:twitter)
    if @lead.save?
      redirect_to root_path
    else
      redirect_to root_path
    end
  end
end
