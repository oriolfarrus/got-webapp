class IntervalMasterController < ApplicationController

  def edit
    @interval_master = IntervalMaster.find(params[:id])
  end

  def show
    @interval_master = IntervalMaster.find(params[:id])
  end

end
