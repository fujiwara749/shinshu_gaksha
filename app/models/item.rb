class Item < ApplicationRecord
  has_many :discs, dependent: :destroy
  has_many :arrivals, dependent: :destroy
  has_many :order_items, dependent: :destroy
end
