class CityController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    @user = User.find(params[:id])
    @city = City.find_by(id: @user.city_id)
  end

end
