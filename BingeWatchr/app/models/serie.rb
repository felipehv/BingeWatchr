class Serie < ApplicationRecord
  has_many :capitulos
  def self.search(search)
	  if search
	    where('lower(name) LIKE ?', "%#{search}%".downcase)
	  else
	    all
	  end
	end
end
