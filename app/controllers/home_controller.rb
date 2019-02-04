class HomeController < ApplicationController

  def display
    @gossip = nil
    Gossip.all.each do |potin|
      @gossip = potin
    end
  end

end
