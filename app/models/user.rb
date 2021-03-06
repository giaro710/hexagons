class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :paths
  has_many :hexagons, through: :paths
  has_one_attached :photo

  def path_limit?
    true if paths.count == 1
  end
end
