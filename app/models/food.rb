class Food < ApplicationRecord
  belongs_to :shop
  has_many :order_foods, dependent: :destroy
  has_many :orders, through: :order_foods, dependent: :destroy
  has_many :italian_foods, dependent: :destroy
  has_many :japanese_foods, dependent: :destroy
  has_many :chinese_foods, dependent: :destroy
  has_many :foods, through: :japanese_foods, dependent: :destroy
  has_many :foods, through: :italian_foods, dependent: :destroy
  has_many :foods, through: :chinese_foods, dependent: :destroy
end
