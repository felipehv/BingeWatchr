# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "admin@uc.cl", password: "123456", admin: 1)
User.create(email: "admin1@uc.cl", password: "123456", admin: 1)

posts_list = [
    [ "LEAKED Star Wars 8", "april fools", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    [ "LEAKED Star Wars 9", "april fools", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    [ "LEAKED Star Wars 10", "april fools", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    [ "LEAKED Star Wars 11", "april fools", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")]
]

posts_list.each do |title, body, created, updated|
  Post.create( title: title, body: body, created_at: created, updated_at: updated)
end

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

tipos_list.each do |tipo, created, updated|
  Tipo.create(name: tipo, created_at: created, updated_at: updated)
end


series_list = [
    ["Game of Thrones", "D.B. Weiss, David Benioff", "14+", 2011,
     "https://static.posters.cz/image/750/poster/game-of-thrones-juego-de-tronos-winter-is-coming-i18529.jpg",
     DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00"), User.find_by_email("admin@uc.cl"),
     Tipo.find_by_name("Thriller")],
    ["The Leftovers", "Damon Lindelof, Tom Perrotta", "16+", 2014,
     "https://d919ce141ef35c47fc40-b9166a60eccf0f83d2d9c63fa65b9129.ssl.cf5.rackcdn.com/images/211594.max-620x600.jpg",
     DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00"), User.find_by_email("admin@uc.cl"),
     Tipo.find_by_name("Thriller")],
    ["Breaking Bad", "Vince Gilligan", "14+", 2008,
     "http://images.amcnetworks.com/amc.com/wp-content/uploads/2010/12/breaking-bad-S5-400x600-compressedV1.jpg",
     DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00"), User.find_by_email("admin@uc.cl"),
     Tipo.find_by_name("Thriller")],
    ["Black Mirror", "Charlie Brooker", "16+", 2016,
     "https://fantopia.club/wp-content/uploads/2017/03/black-mirror.jpg",
     DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00"), User.find_by_email("admin@uc.cl"),
     Tipo.find_by_name("Thriller")],
    ["True Detective", "Nic Pizzolatto", "Mature", 2014,
    "https://s-media-cache-ak0.pinimg.com/736x/3b/58/1d/3b581d4e1a84e409e1aaa1df1eb6428d.jpg",
     DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00"), User.find_by_email("admin1@uc.cl"),
     Tipo.find_by_name("Thriller")]
]

series_list.each do |name, creator, maturity, year, image, created, updated, user, tipo|
  Serie.create(name: name, creator: creator, maturity: maturity, year: year, image: image, created_at: created,
               updated_at: updated, user_id: user, tipo_id: tipo)
end

capitulos = [
    ["Pilot", false, Serie.find_by_name("The Leftovers"), 1, 1, "Kevin Garvey is a police chief in Mapleton, New York, working to keep order after the mysterious Sudden Departure, an unexplained event that occurred three years prior which saw the disappearance of many of the town's citizens. His wife, Laurie, has left him to join the Guilty Remnant (GR), an organization with unknown motives and members dressed in all-white who communicate by writing notes as they have taken a vow of silence. His son, Tom, has also left him to become a follower of Holy Wayne, a messianic figure. Kevin's daughter, Jill, lives with him and is in high school, but the erosion of her family life leads her to act out. Kevin is in conflict with Mayor Lucy Warburton about her plan for a parade to honor the victims of the Sudden Departure. His prediction that the GR will hold a protest during the parade, which will result in violence with the angered townspeople, unfortunately comes true. Afterward, Kevin begs Laurie to return home with him, but she refuses to speak to him. Bride-to-be, Megan (Meg) Abbott, shows up at the GR house asking if she can stay there for a few nights.",
     DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00"),5],
    ["Penguin One", false, Serie.find_by_name("The Leftovers"), 2, 1, "When an ATFEC (the Bureau of Alcohol, Tobacco, Firearms, Explosives, and Cults; formerly the ATF) team attacks Holy Wayne's hideout, Tommy kills somebody for the first time in order to protect Christine's life. Meg has been living at the GR residence for weeks and becomes frustrated at her apparent lack of progress into their ranks. Following his night shooting dogs with Dean, Kevin's stability is questioned by his deputies and Lucy. He later visits his institutionalized father when he himself feels his sanity unraveling. Tommy's guilt is exacerbated by his growing animosity towards Wayne. Jill, Aimee and the twins spend the day following Nora after Jill spots a pistol in Nora's purse.",
     DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00"),4],
    ["Two Boats and a Helicopter", false, Serie.find_by_name("The Leftovers"), 3, 1, "Reverend Matt Jamison is steadfast in his belief that the Departed have all been less than Heroes, despite the abuse this earns him from the public. Matt faces foreclosure on his church. Following an apparent sign from God, he wins enough money at the casino to buy it back. Encountering an unknown assailant throwing rocks at members of the Guilty Remnant, Matt tries to help, only to be hit by a rock himself, and knocked unconscious. Upon waking he learns he has missed the foreclosure deadline by two days; it is revealed that the Guilty Remnant have bought his church.",
     DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00"),5],
    ["Battle of the Bastards", false, Serie.find_by_name("Game of Thrones"), 9, 6, "Daenerys meets with the slave masters to negotiate terms of surrender, but they refuse it. Riding Drogon, as Rhaegal and Viserion assist, Daenerys attacks and burns the slavers' fleet. Grey Worm kills two of the masters, leaving one to tell of what he had witnessed. After the battle, Theon and Yara meet with Daenerys and Tyrion and agree to an alliance. Near Winterfell, the Stark and Bolton armies meet on the field. Ramsay feigns setting Rickon free, but kills him with a long-distance arrow before Jon can save him. In the battle, the Stark forces are pinned by Bolton soldiers, but are rescued by the Knights of the Vale. Ramsay flees inside Winterfell, but the Wildling giant Wun Wun, having taken numerous arrows to his body, manages to break down the gate before succumbing to his wounds. Jon brutally beats Ramsay and takes him prisoner. Sansa later visits Ramsay's cell in the kennels and watches as his starving hounds devour him.",
     DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00"),4]
]

capitulos.each do |title, seen, serie, episode, season, description, created, updated, rating|
  Capitulo.create(title: title, seen: seen, serie: serie, episode: episode, season: season,
                  description: description, created_at: created, updated_at: updated, rating: rating)
end

comments = [
    [1, "Mejor serie de la historia!!!", 1, DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")]
]

comments.each do |user, body, serie, created, updated|
  Comment.create(user_id: user, body: body, series_id: serie, created_at: created, updated_at: updated)
end


