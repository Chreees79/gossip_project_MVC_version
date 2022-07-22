require 'view'
require 'gossip'

class Controller

  def initialize
    @view = View.new
  end

  def create_gossip
    params = @view.create_gossip
    gossip = Gossip.new(params[:author], params[:content])
    gossip.save
  end

  def index_gossips
    all_gossips = Gossip.all
    num = 1
    all_gossips.each do |gossip|
       puts "#{num} - auteur : #{gossip.author} => potin : #{gossip.content}"
    num += 1
    end
  end
end
