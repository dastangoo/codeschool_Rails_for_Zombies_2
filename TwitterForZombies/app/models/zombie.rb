class Zombie < ApplicationRecord
  has_one :brain, dependent: destroy
end
