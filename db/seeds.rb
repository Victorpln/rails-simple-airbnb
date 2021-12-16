Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
Cosy = { name: 'Cosy', address: '7 Boundary St, London E2 7JE',
         description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 75, number_of_guests: 3 }
Mamounia = { name: 'Mamounia', address: '3 rue de Marrakech', description: 'The best place to be',
             price_per_night: 450, number_of_guests: 2 }
Etap = { name: 'Etap', address: '3 Pancras St, London E2 7JE', description: 'A palace for a small price',
         price_per_night: 86, number_of_guests: 2 }
Mink = { name: 'Mink', address: '3 rue des lacs, London E2 7JE', description: 'A flat you cant forger',
         price_per_night: 390, number_of_guests: 6 }

[Cosy, Mamounia, Etap, Mink].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts 'Finished!'
