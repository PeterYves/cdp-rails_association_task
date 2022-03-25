class Shop < ApplicationRecord
  has_many :addresses, as: :addressable, dependent: :destroy
  has_many :foods, dependent: :destroy
  has_many :italian_foods, :through => :foods
  has_many :japanese_foods, :through => :foods
  has_many :chinese_foods, :through => :foods
end
