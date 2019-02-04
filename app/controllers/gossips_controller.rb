class GossipsController < ApplicationController
  def display
    @gossip_nb = Gossip.find_by(id: params[:gossip_id])
    @author = User.find_by(id: @gossip_nb.user_id).first_name

    @user = nil
    User.all.each do |author|
      @user = author
    end
  end
end
