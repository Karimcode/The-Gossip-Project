class GossipsController < ApplicationController
  def display
    @gossip_nb = Gossip.find_by(id: params[:gossip_id])
    @author = User.find_by(id: @gossip_nb.user_id).first_name

  end
end
