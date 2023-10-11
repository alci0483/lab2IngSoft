class Victim < ApplicationRecord
  validates :name, presence: true # Validación para que el nombre sea obligatorio

  has_many :attacks
  has_many :monsters, through: :attacks
end
