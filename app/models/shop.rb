class Shop < ApplicationRecord
  has_many :addresses, as: :addressable, dependent: :destroy
  # has_many :foods, dependent: :destroy
  has_many :italian_foods, dependent: :destroy
  has_many :japanese_foods, dependent: :destroy
  has_many :chinese_foods, dependent: :destroy
  has_many :foods, through: :japanese_foods, dependent: :destroy
  has_many :foods, through: :italian_foods, dependent: :destroy
  has_many :foods, through: :chinese_foods, dependent: :destroy
end
