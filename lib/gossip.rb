require 'csv'

class Gossip
attr_reader :author, :content

  def initialize(author, content)
    @author = author
    @content = content
  end

  def save
    CSV.open("db/gossip.csv", "a") do |csv|
      csv << [@author, @content]
    end
  end
    

  def self.all
    all_gossips = []
    CSV.read("db/gossip.csv").each{|gossip| all_gossips.push(Gossip.new(gossip[0], gossip[1]))}
    return all_gossips
  end
end

