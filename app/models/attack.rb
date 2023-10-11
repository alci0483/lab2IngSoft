class Attack < ApplicationRecord
  belongs_to :monster
  belongs_to :victim
end
