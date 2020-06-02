class Mob < ApplicationRecord
    has_many :attacks
    has_many :moves, through: :attacks
end
