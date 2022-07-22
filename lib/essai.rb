essai = ["A","B","C"]
puts "donne un chiffre"
input = gets.chomp.to_i
 new = essai.delete_at(input - 1)
puts new