class Capitulo < ApplicationRecord
  belongs_to :serie
  has_many :seen_capitulos
  has_many :rating_capitulos
  has_many :watch_laters
  has_many :favorite_capitulos
end
