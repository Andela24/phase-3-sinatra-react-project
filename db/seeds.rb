puts "🌱 Seeding spices..."

# Seed your database here

Destination.create([{
    name: "Paris",
    country: "France",
    continent: "Europe"
}])
Destination.create([{
    name: "Roma",
    country: "Italy",
    continent: "Europe"
}])
Destination.create([{
    name: "Berlin",
    country: "Germany",
    continent: "Europe"
}])
Destination.create([{
    name: "Malibu",
    country: "California",
    continent: "United States"
}])
Destination.create([{
    name: "Portland",
    country: "Oregon",
    continent: "United States"
}])
Destination.create([{
    name: "Beijing",
    country: "China",
    continent: "Asia"
}])


puts "✅ Done seeding!"
