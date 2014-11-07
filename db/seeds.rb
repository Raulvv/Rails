# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

location = Location.create(name: 'Casta', city: 'Barcelona', zip_code: 28900, country: 'Spain', street: 'Calle Castellana', description: 'Esto es una descripcion bastante explicativa.', latitude: 40.28, longitude: -3.70 )
location2 = Location.create(name: 'Humildat', city: 'Malaga', zip_code: 66900, country: 'Spain', street: 'Santa Clara', description: 'Esto es una descripcion bastante explicativa.', latitude: 40.28, longitude: -3.70 )
location3 = Location.create(name: 'Valors', city: 'Madrid', zip_code: 43300, country: 'Spain', street: 'Canaletas', description: 'Esto es una descripcion bastante explicativa.', latitude: 40.28, longitude: -3.70 )

location.visits.build(user_name: 'Juanjo', from_date: Time.now, to_date: Time.now + 1.hour)
location.save

visit = Visit.create(user_name: 'Joselu', from_date: Time.now, to_date: Time.now + 1.hour)
visit.location = location2
visit.save

visit2 = Visit.create(user_name: 'JuanRa', from_date: Time.now, to_date: Time.now + 1.hour)
location3.visits << visit2

Visit.create(user_name: 'JuanRa', from_date: Time.now, to_date: Time.now + 1.hour, location_id: location2.id)

user1 = User.create(name: 'PacoFiestas', email: 'pacofiestas@gmail.com')
user2 = User.create(name: 'LaPaca', email: 'ostialapaca@gmail.com')