class Monst < ApplicationRecord
    has_many :mattacks
    has_many :moves, through: :mattacks
end
