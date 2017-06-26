class FavoriteCapitulo < ApplicationRecord
  belongs_to :user
  belongs_to :capitulo
end
