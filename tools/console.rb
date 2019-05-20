require_relative '../config/environment.rb'

dan = Artist.new("Danny B", 15)
bob = Artist.new("Bobby Boy", 10)
lydia = Artist.new("Lydia", 5)

vanda = Gallery.new("The V & A", "London")
louvre = Gallery.new("The Louvre", "Paris")
natural = Gallery.new("Natural History", "London")

monalisa = Painting.new("Mona Lisa", 100, dan, vanda)
bone = Painting.new("Big Bone", 500, bob, natural)
face = Painting.new("Smiling Face", 10, lydia, louvre)


binding.pry

puts "Bob Ross rules."
