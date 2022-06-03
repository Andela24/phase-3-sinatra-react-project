puts "🌱 Seeding spices..."

# Seed your database here

paris = Destination.create([{
    id: 1,
    name: "Paris",
    country: "France",
    continent: "Europe"
}])
roma = Destination.create([{
    id: 2,
    name: "Roma",
    country: "Italy",
    continent: "Europe"
}])
berlin = Destination.create([{
    id: 3,
    name: "Berlin",
    country: "Germany",
    continent: "Europe"
}])
malibu = Destination.create([{
    id: 4,
    name: "Malibu",
    country: "California",
    continent: "United States"
}])
portland = Destination.create([{
    id: 5,
    name: "Portland",
    country: "Oregon",
    continent: "United States"
}])
beijing = Destination.create([{
    id: 6,
    name: "Beijing",
    country: "China",
    continent: "Asia"
}])

Attraction.create([{
    name: "Eiffel Tower",
    description: "The Eiffel Tower is a wrought iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower.",
    destination_id: 1
    }])

    Attraction.create([{
        name: "Louvre Museum",
        description: "The Louvre, or the Louvre Museum, is the world's most-visited museum, and a historic landmark in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement.",
        destination_id: 1
        }])

        Attraction.create([{
            name: "Cathédrale Notre-Dame de Paris",
            description: "Notre-Dame de Paris, referred to simply as Notre-Dame, is a medieval Catholic cathedral on the Île de la Cité, in the 4th arrondissement of Paris. The cathedral, dedicated to the Virgin Mary, is considered one of the finest examples of French Gothic architecture.",
            destination_id: 1
            }])


Attraction.create([{
    name: "Colloseum Tour",
    description: "The Colosseum is an oval amphitheater in the center of the city of Rome,
    Italy, just east of the Roman Forum. It is the largest ancient amphitheater
    ever built, and is still the largest standing amphitheater in the world today, despite its age.",
    destination_id: 2
    }])

    Attraction.create([{
        name: "Amalfi Coast",
        description: "The Amalfi Coast is a 50-kilometer stretch of coastline along the southern edge of Italy’s Sorrentine Peninsula, in the Campania region. It’s a popular holiday destination, with sheer cliffs and a rugged shoreline dotted with small beaches and pastel-colored fishing villages. The coastal road between the port city of Salerno and clifftop Sorrento winds past grand villas, terraced vineyards and cliffside lemon groves.",
        destination_id: 2
        }])

        Attraction.create([{
            name: "Positano",
            description: "Positano is a cliffside village on southern Italy's Amalfi Coast. It's a well-known holiday destination with a pebble beachfront and steep, narrow streets lined with boutiques and cafes. Its Chiesa di Santa Maria Assunta features a majolica-tiled dome and a 13th-century Byzantine icon of the Virgin Mary. The Sentiero degli Dei hiking trail links Positano to other coastal towns",
            destination_id: 2
            }])

    Attraction.create([{
        name: "German Museum of Technology",
        description: "German museum of science and technology is a large collection of historical technical artifacts. The museum's main emphasis originally was on rail transport, but today it also features exhibits of various sorts of industrial technology.",
        destination_id: 3
        }])

        Attraction.create([{
            name: "Brandenburg Gate",
            description: "The Brandenburg Gate is an 18th-century neoclassical monument in Berlin, built on the orders of Prussian king Frederick William II after the temporary restoration of order during the Batavian Revolution. One of the best-known landmarks of Germany, it was built on the site of a former city gate that marked the start of the road from Berlin to the town of Brandenburg an der Havel, which used to be the capital of the Margraviate of Brandenburg.",
            destination_id: 3
            }])

            Attraction.create([{
                name: "Victory Column",
                description: "The Victory Column is a monument in Berlin, Germany. Designed by Heinrich Strack after 1864 to commemorate the Prussian victory in the Second Schleswig War, by the time it was inaugurated on 2 September 1873, Prussia had also defeated Austria and its German allies in the Austro-Prussian War and France in the Franco-Prussian War, giving the statue a new purpose. ",
                destination_id: 3
                }])

    Attraction.create([{
        name: "Beach Day At Malibu",
        description: "Malibu is a beautiful city famous for its beaches, natural hiking trails, and the many celebrities that have homes in its region. With a mix of laid
        -back attractions and upscale luxury hotspots, there are so many places to see and places to go within the vibrant, sunny town.",
        destination_id: 4
        }])

        Attraction.create([{
            name: "Portland Japanesse Garden",
            description: "Japanese gardens are renowned the world over for their beauty, intricacy, and depth of meaning. The construction of gardens became an important cultural art form in and of itself and is a great source of national pride of Japanese people and a great source of enjoyment for all who visit Japan.",
            destination_id: 5
            }])

        Attraction.create([{
            name: "Great Wall Of China",
            description: "The Great Wall of China is a series of fortifications that were built across the historical northern borders of ancient Chinese states and Imperial China as protection against various nomadic groups from the Eurasian Steppe.",
            destination_id: 6
                }])



puts "✅ Done seeding!"
