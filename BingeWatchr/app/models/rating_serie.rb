class RatingSerie < ApplicationRecord
  belongs_to :user
  belongs_to :serie
end
