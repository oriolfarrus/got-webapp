class IntervalMasterController < ApplicationController

  def edit
    @interval_master = IntervalMaster.find(params[:id])
  end

  def update
    @interval_master = IntervalMaster.find(params[:id])
    @interval_master.update_attributes(interval_master_params)

    redirect_to @interval_master
  end

  def show
    @interval_master = IntervalMaster.find(params[:id])
  end

  def create
    @interval_master = IntervalMaster.create(interval_master_params)

    redirect_to @interval_master
  end

  private

      def interval_master_params
        params.require(:interval_master).permit(:name, :season_id)
      end
end
