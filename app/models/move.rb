class Move < ApplicationRecord
    has_many :attacks 
    has_many :mobs, through: :attacks
    has_many :mattacks
    has_many :monsts, through: :mattacks
   
end
