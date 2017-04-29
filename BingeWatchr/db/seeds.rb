# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

posts_list = [
    [ "LEAKED Star Wars 8", "april fools", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    [ "LEAKED Star Wars 9", "april fools", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    [ "LEAKED Star Wars 10", "april fools", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    [ "LEAKED Star Wars 11", "april fools", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")]
]

tipos_list = [
    ["Horror", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    ["Drama", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    ["Comedia", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    ["Documental", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    ["Accion", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    ["Romance", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    ["Clásico", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    ["Independiente", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    ["Sci-Fi", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    ["Niños", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    ["Thriller", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    ["Deporte", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    ["Fe y Esperitualidad", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    ["Shows de TV", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    ["Anime", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    ["Música", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    ["Telenovelas", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
]

posts_list.each do |title, body, created, updated|
  Post.create( title: title, body: body, created_at: created, updated_at: updated)
end

tipos_list.each do |tipo, created, updated|
  Tipo.create(name: tipo, created_at: created, updated_at: updated)
end