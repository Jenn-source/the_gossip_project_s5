class GossipPageController < ApplicationController

  def index
    @gossips = Gossip.all
  end

  def show
    id_gossip = params[:id].to_i
    @gossip = Gossip.all[id_gossip]
  end

  def author
    id_author = params[:id].to_i
    @user = User.all[id_author]
  end

end
