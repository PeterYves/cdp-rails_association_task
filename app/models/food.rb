class Food < ApplicationRecord
  belongs_to :shop
  has_many :order_foods, dependent: :destroy
  has_many :orders, through: :order_foods, dependent: :destroy
  has_many :italian_foods, dependent: :destroy
  has_many :japanese_foods, dependent: :destroy
  has_many :chinese_foods, dependent: :destroy
end
