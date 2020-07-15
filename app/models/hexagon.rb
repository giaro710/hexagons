class Hexagon < ApplicationRecord
  belongs_to :path

  validates :title, presence: true
  validates :title, length: { in: 1..30 }
end
