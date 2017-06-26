class RatingCapitulo < ApplicationRecord
  belongs_to :user
  belongs_to :capitulo
end
