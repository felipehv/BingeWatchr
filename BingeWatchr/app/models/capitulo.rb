class Capitulo < ApplicationRecord
  belongs_to :serie
  has_many :seen_capitulos
  has_many :rating_capitulos
end
