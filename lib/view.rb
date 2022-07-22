class View

  def create_gossip
    puts "Quel est ton nom ?"
    author = gets.chomp
      if author == ""
        puts "Veuillez entrer un nom"
        create_gossip
      else
        puts "Quel est le contenu de ton gossip ?"
        content = gets.chomp
        if content == ""
          puts "Veuillez entrer un contenu"
          create_gossip
        else
          return params = {content: content, author: author}
        end
    end
  end

  def delete_gossip
    puts "quel numéro de potin veux-tu supprimer ?"
    input = gets.chomp.to_i
    return input
  end

end