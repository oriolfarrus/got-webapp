class UniversesController < ApplicationController

  before_action :admin_user,     only: :create

  def index
    @universes = Universe.all
  end

  def create
    universe = Universe.create(universe_params)
    IntervalMaster.create(:season => Season.first, :universe => universe)
    @universes = Universe.all
    render 'index'
  end

  def show
    @universe = Universe.find(params[:id])
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
