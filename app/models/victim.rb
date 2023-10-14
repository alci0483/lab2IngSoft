class Victim < ApplicationRecord
  validates :name, presence: true # Validación para que el nombre sea obligatorio

  has_many :attacks, dependent: :destroy # Esta opción eliminará todos los ataques asociados cuando se elimina una víctima.

  has_many :monsters, through: :attacks
end
