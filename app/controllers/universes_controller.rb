class UniversesController < ApplicationController

  before_action :admin_user,     only: :create

  def index
    @universes = Universe.all
  end

  def create
    universe = Universe.create(universe_params)
    IntervalMaster.create(:season => Season.first, :universe => universe, :name => "Default Name", :finished => false, :order => 0)
    @universes = Universe.all
    render 'index'
  end

  def show
    @universe = Universe.find(params[:id])
  end

  def new_interval
    @universe = Universe.find(params[:universe_id])
    IntervalMaster.create(:season_id => params[:season][:season_id], :universe => @universe, :name => params[:name], :finished => false, :order => @universe.interval_master.count)
    redirect_to(@universe)
  end

  private
  # Confirms an admin user.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end


    def universe_params
      params.require(:universe).permit(:name)
    end

end
