class Monster < ApplicationRecord
  validates :name, presence: true#, uniqueness: true
  validates_uniqueness_of :name, case_sensitive: false # La validación de unicidad (case-insensitive)

  has_many :victims, through: :attacks, source: :victim
  has_many :attacks
  has_many :victims, through: :attacks

  def validate_victims_age
      if scare_level.present? && scare_level > 5
        if victims.any? { |victim| (Date.current.to_time.to_i - victim.birthdate.to_time.to_i) / 31500000 < 18 }
          errors.add(:victims, "Los monstruos con un nivel de susto superior a 5 no pueden tener víctimas menores de 18 años.")
        end
      end
  end

end
