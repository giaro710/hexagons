class Hexagon < ApplicationRecord
  belongs_to :path

  validates :title, presence: true
  validates :title, length: { in: 1..21 }

  has_rich_text :long_content
end
