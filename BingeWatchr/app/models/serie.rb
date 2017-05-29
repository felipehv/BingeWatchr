class Serie < ApplicationRecord
  ##belongs_to :user
  ##belongs_to :tipo
  has_many :capitulos
end
