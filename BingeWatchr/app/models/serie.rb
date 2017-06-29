class Serie < ApplicationRecord
    has_many :capitulos
    has_many :favorites

    def self.filter(search, tipo_id, series)
      
    end
end
