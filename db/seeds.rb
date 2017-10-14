# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create( [
                 {name: 'Shopping'},
                 {name: 'Cultural'},
                 {name: 'Nightlife'}
                             ] )

places = Place.create( [
                 { name: 'ALEXA', latitude: 52.520066, longitude: 13.415127, category_id: 1, indoor: true, price: 2 },
								 { name: 'Boulevard Berlin', latitude: 52.462697, longitude: 13.325522, category_id: 1, indoor: true, price: 3 },
								 { name: 'Kufürstendamm', latitude: 52.503371, longitude: 13.330733, category_id: 1, indoor: false, price: 4 },
								 { name: 'KdW', latitude: 52.502130, longitude: 13.341443, category_id: 1, indoor: true, price: 3 },
								 { name: 'Unter den Linden', latitude: 52.516902, longitude: 13.389091, category_id: 1, indoor: false, price: 4 },
								 { name: 'Mall of Berlin', latitude: 52.510943, longitude: 13.380679, category_id: 1, indoor: true, price: 3 },

								 { name: 'Berghain', latitude: 52.510631, longitude: 13.442224, category_id: 2, indoor: true, price: 2, duration: 240 },
								 { name: 'Sisyphos', latitude: 52.493166, longitude: 13.491211, category_id: 2, indoor: true, price: 1, duration: 180 },
								 { name: 'Watergate', latitude: 52.500954, longitude: 13.445090, category_id: 2, indoor: true, price: 2, duration: 180 },
								 { name: 'Sage', latitude: 52.510934, longitude: 13.417018, category_id: 2, indoor: true, price: 1, duration: 180 },
								 { name: 'Lido', latitude: 52.499096, longitude: 13.445166, category_id: 2, indoor: true, price: 1, duration: 180 },
								 { name: 'SO36', latitude: 52.500430, longitude: 13.422143, category_id: 2, indoor: true, price: 1, duration: 180 },

								 { name: 'Fernsehturm', latitude: 52.521170, longitude: 13.410201, category_id: 3, indoor: true, price: 2, duration: 120 },
								 { name: 'Eastside Gallery', latitude: 52.505052, longitude: 13.439677, category_id: 3, indoor: false, price: 0, duration: 60 },
								 { name: 'Reichstag', latitude: 52.518605, longitude: 13.375012, category_id: 3, indoor: true, price: 0, duration: 180 },
								 { name: 'Brandenburger Tor', latitude: 52.516284, longitude: 13.377994, category_id: 3, indoor: false, price: 0, duration: 30 },
								 { name: 'Naturkundemuseum', latitude: 52.529920, longitude: 13.379621, category_id: 3, indoor: true, price: 1, duration: 180 },
								 { name: 'Siegessäule', latitude: 52.514519, longitude: 13.350116, category_id: 3, indoor: false, price: 1, duration: 60 },
                      ] )
