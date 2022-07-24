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

  def delete 
    all_gossips = Gossip.all
    input = @view.delete_gossip
    all_gossips.delete_at(input - 1)
    new_list_gossips = all_gossips
    CSV.open("db/gossip.csv", "w") do |csv|
      new_list_gossips.map! do |gossip|
      csv << [gossip.author, gossip.content]
      end
    end
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
