require 'controller'

class Routeur

  def initialize
    @controller = Controller.new
  end

  def perform
    puts
    puts " " * 30 + " 🚨 BIENVENUE DANS THE GOSSIP PROJECT 🚨".underline.black.on_yellow
    puts
    while true
      puts " " * 35 + "=" * 30
      puts
      puts " " * 35 + "Tu veux faire quoi cher visiteur ?".green
      puts " " * 35 + "1. Je veux créer un gossip 💥".green
      puts " " * 35 + "2. Je veux voir tous les gossips 🗞".green
      puts " " * 35 + "3. Je veux supprimer un gossip 🗑".green
      puts " " * 35 + "4. Je veux quitter l'app 👋".green
      puts
      puts " " * 35 + "=" * 30
      puts
      params = gets.chomp.to_i

      case params
      when 1
        puts " " * 35 + "Tu as choisi de créer un gossip 👌".blue
        puts " " * 35 + "_".magenta * 30
        puts
        @controller.create_gossip
      when 2
        puts " " * 35 + "Tu as choisi de voir tous les gossips 😎".blue
        puts " " * 35 + "_".magenta * 30
        puts
        @controller.index_gossips
      when 3
        puts " " * 35 + "Tu as choisi de supprimer un gossip 😱".blue
        puts " " * 35 + "_".magenta * 30
        @controller.index_gossips
        @controller.delete
        puts " " * 35 + "Potin supprimé 🗑".red
      when 4
        puts " " * 35 + "À bientôt !".underline.black.on_yellow
        puts
        break
      else
        puts " " * 35 +" ❌ ❌ Ce choix n'existe pas, merci de réessayer ❌ ❌".red
        puts
      end
    end
  end
end