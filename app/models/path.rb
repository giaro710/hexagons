class Path < ApplicationRecord
  # Associations
  belongs_to :user
  has_many :hexagons, dependent: :destroy

  # Validations
  validates :name, presence: true
  # dovrei aggiungere un unicità er il current_user: se tu hai un path chiamato "vita", non ne puoi avere un altro con lo stesso nome
end
