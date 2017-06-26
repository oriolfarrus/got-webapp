class HousesController < ApplicationController


  def index
  end

  def create
    newParams = [:name => params[:house][:name], :universe_id => params[:house][:universe_id], :user_id => current_user.id]

    House.create!(newParams)

    #current_user.houses.build(house_params)
    render 'index'
  end

  private

  def house_params
    params.require(:house).permit(:name, :universe_id)
  end

  # Confirms an admin user.
  def admin_user
    redirect_to(root_url) unless current_user.admin?
  end

end
