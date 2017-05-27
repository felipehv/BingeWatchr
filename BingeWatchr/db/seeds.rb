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

series_list = [
    ["Game of Thrones", "D.B. Weiss, David Benioff", "14+", 2011,
     "https://static.posters.cz/image/750/poster/game-of-thrones-juego-de-tronos-winter-is-coming-i18529.jpg",
     DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    ["The Leftovers", "Damon Lindelof, Tom Perrotta", "16+", 2014,
     "https://d919ce141ef35c47fc40-b9166a60eccf0f83d2d9c63fa65b9129.ssl.cf5.rackcdn.com/images/211594.max-620x600.jpg",
     DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    ["Breaking Bad", "Vince Gilligan", "14+", 2008,
     "http://images.amcnetworks.com/amc.com/wp-content/uploads/2010/12/breaking-bad-S5-400x600-compressedV1.jpg",
     DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    ["Black Mirror", "Charlie Brooker", "16+", 2016,
     "https://fantopia.club/wp-content/uploads/2017/03/black-mirror.jpg",
     DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")],
    ["True Detective", "Nic Pizzolatto", "Mature", 2014,
    "https://s-media-cache-ak0.pinimg.com/736x/3b/58/1d/3b581d4e1a84e409e1aaa1df1eb6428d.jpg",
     DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00")]
]

admin_list = ["aiquinones@uc.cl", "", "", DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00"), 10,
              DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00"), "", "", true, 1,
              DateTime.parse("09/01/2009 17:00"), DateTime.parse("09/01/2009 17:00"), 1, 1]


t.string   "email",                  default: "", null: false
t.string   "encrypted_password",     default: "", null: false
t.string   "reset_password_token"
t.datetime "reset_password_sent_at"
t.datetime "remember_created_at"
t.integer  "sign_in_count",          default: 0,  null: false
t.datetime "current_sign_in_at"
t.datetime "last_sign_in_at"
t.inet     "current_sign_in_ip"
t.inet     "last_sign_in_ip"
t.boolean  "admin"
t.integer  "user"
t.datetime "created_at",                          null: false
t.datetime "updated_at",                          null: false
t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
t.index ["reset_password_token"]

posts_list.each do |title, body, created, updated|
  Post.create( title: title, body: body, created_at: created, updated_at: updated)
end

tipos_list.each do |tipo, created, updated|
  Tipo.create(name: tipo, created_at: created, updated_at: updated)
end

series_list.each do |name, creator, maturity, year, image, created, updated, user, tipo|
  Serie.create(name: name, creator: creator, maturity: maturity, year: year, image: image, created_at: created,
               updated_at: updated)
end

admin_list.each do |email, encrypted, token, sent, remember, count, current, last, curentip, lastip, admin, user,
    created, updated, index1, index2|
  User.create( email: email, encrypted_password: encrypted, reset_password_token: token,
               reset_password_token_sent_at: sent, remember_created_at: remember, sign_in_count: count,
               current_sign_in_at: current, last_sign_in_at: last, current_sign_in_ip: curentip,
               last_sign_in_ip: lastip, admin: admin, user: user, created_at: created, updated_at: updated,
               index_users_on_email: index1, )
end