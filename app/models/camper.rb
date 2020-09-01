class Camper < ApplicationRecord
    has_many :sign_ups
    has_many :activities, through: :sign_ups
    validates :name, uniqueness: true
    validates_inclusion_of :age, :in => 8..18

end



# Camper -< SignUp >-Activities 