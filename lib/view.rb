class View

  def create_gossip
    puts " " * 35 + "Quel est ton nom ?".yellow
    author = gets.chomp
      if author == ""
        puts " " * 35 + "Veuillez entrer un nom".red
        create_gossip
      else
        puts " " * 35 + "Quel est le contenu de ton gossip ?".yellow
        content = gets.chomp
        if content == ""
          puts " " * 35 + "Veuillez entrer un contenu".red
          create_gossip
        else
          return params = {content: content, author: author}
        end
    end
  end

  def delete_gossip
    puts " " * 35 + "quel numéro de potin veux-tu supprimer ?".yellow
    input = gets.chomp.to_i
    return input
  end
end