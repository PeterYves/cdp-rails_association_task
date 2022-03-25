class JapaneseFood < ActiveRecord::Base
  belongs_to :shop
  belongs_to :food
  has_many :order_foods, dependent: :destroy
  has_many :orders, through: :order_foods, dependent: :destroy
end
