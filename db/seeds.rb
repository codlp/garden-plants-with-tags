Garden.destroy_all if Rails.env.development?

puts "Starting to seed"

little_garden = Garden.create!(
  name: "My Little Garden",
  picture: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

puts "Creating #{little_garden.name}..."

big_garden = Garden.create!(
  name: "My Other Garden",
  picture: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

puts "Creating #{big_garden.name}..."

plant = Plant.create!(
  name: "Monstera",
  picture: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/monstera.jpg",
  garden: little_garden
)

puts "Creating #{plant.name}..."

plant = Plant.create!(
  name: "Philo",
  picture: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/philo.jpg",
  garden: little_garden
)

puts "Creating #{plant.name}..."

plant = Plant.create!(
  name: "Dieff",
  picture: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/plants/dieffenbachia.jpg",
  garden: big_garden
)

puts "Creating #{plant.name}..."

Tag.destroy_all if Rails.env.development?

names = %w(Fruit\ tree Cactus Greasy\ plant Flower Ferns Conifers)

names.each do |name|
  Tag.create!(name: name)
end
