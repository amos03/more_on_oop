require_relative "task02_vampires"

vampire1=Vampire.new("Rüdiger", 11)
vampire2=Vampire.new("Anna",9)
vampire3=Vampire.new("Lumpi", 16)
vampire4=Vampire.new("Dorothee", 47)


puts "--------------------------------------------"
puts "Coven of Vampires"
p Vampire.display_coven
puts "--------------------------------------------"

puts "Sunset"
Vampire.sunset

puts "--------------------------------------------"
puts "Out and About Vampires:"
p Vampire.out_and_about_vampires
puts "--------------------------------------------"
puts "Anna and Lumpi have found some blood but Rüdiger and Dorothee have not."
vampire2.drink_blood
vampire3.drink_blood
p Vampire.display_coven
puts "--------------------------------------------"
puts "Sunrise"
Vampire.sunrise
puts "--------------------------------------------"
puts "Some vampires are now dead:"
p Vampire.display_dead
puts "--------------------------------------------"
puts "That leaves us with the following vampires in the coven:"
p Vampire.display_coven