# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

eje1 = Location.create(name: 'Casta', city: 'Barcelona', zip_code: 28900, country: 'Spain', street: 'Calle Castellana', description: 'Esto es una descripcion bastante explicativa.')
eje2 = Location.create(name: 'Humildat', city: 'Malaga', zip_code: 66900, country: 'Spain', street: 'Santa Clara', description: 'Esto es una descripcion bastante explicativa.')
eje3 = Location.create(name: 'Valors', city: 'Madrid', zip_code: 43300, country: 'Spain', street: 'Canaletas', description: 'Esto es una descripcion bastante explicativa.')