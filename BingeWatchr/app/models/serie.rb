class Serie < ApplicationRecord
  belongs_to :user
  belongs_to :tipo
  has_many :capitulos
  def self.search(search)
	  if search
	    where('lower(name) LIKE ?', "%#{search}%".downcase)
	  else
	    all
	  end
	end
end
