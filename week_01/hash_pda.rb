cars = [
  {make: "Mclaren", model: "F1", capacity: 6.1},
  {make: "Nissian", model: "GTR", capacity: 3.8},
  {make: "Ferrari", model: "Gallardo", capacity: 5.2}
]

def corretMake
  list = []
  for car in cars
  "Lamborghini" << cars[:make] if cars[:make] == "Ferrari"
  end
  return cars
end


# p cars
#
# p cars.length
