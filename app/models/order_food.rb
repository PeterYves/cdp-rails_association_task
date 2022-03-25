class OrderFood < ApplicationRecord
  belongs_to :food
  belongs_to :order
  belongs_to :italian_food
  belongs_to :japanese_food
  belongs_to :chinese_food
end
