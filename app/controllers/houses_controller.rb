class HousesController < ApplicationController


  def index
    if current_user.admin?
      @houses = House.all
    else
      @houses = House.where(user: current_user)
    end
  end

  def show
    @house = House.find(params[:id])

    if(@house.nil?)
      redirect_to index
    end
  end

  def create
    #newParams = [:name => params[:house][:name], :universe_id => params[:house][:universe_id], :user_id => current_user.id]

    house = House.create!(house_params)
    Vicissitude.create(:house => house, :interval_master => house.universe.interval_master.last)
    #current_user.houses.build(house_params)
    redirect_to house
  end

  private

  def house_params
    params.require(:house).permit(:name, :universe_id, :user_id)
  end

  # Confirms an admin user.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

end
