class Serie < ApplicationRecord
    has_many :capitulos
    def self.filter(search, tipo_id, series)
      results = series
      results = results.where('lower(name) LIKE ?', "%#{search}%".downcase) if search.present?
      results = results.where("series.tipo_id = ?", tipo_id) if tipo_id.present?
      results
    end
end
