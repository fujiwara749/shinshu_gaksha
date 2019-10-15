class Genre < ApplicationRecord
  has_many :genre_sets
  has_many :items, through: :genre_sets
end
