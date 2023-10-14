class Monster < ApplicationRecord
  validates :name, presence: true#, uniqueness: true
  validates_uniqueness_of :name, case_sensitive: false # La validación de unicidad (case-insensitive)

  has_many :attacks, dependent: :destroy # Esta opción eliminará todos los ataques asociados cuando se elimina un monstruo.

  has_many :victims, through: :attacks

end
