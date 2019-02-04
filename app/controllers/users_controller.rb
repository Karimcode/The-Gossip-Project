class UsersController < ApplicationController
  def display
    @user_nb = User.find_by(id: params[:user_id])
    @city = City.find(@user_nb.city_id).name
    @user = nil
    User.all.each do |author|
      @user = author
    end
  end

end
