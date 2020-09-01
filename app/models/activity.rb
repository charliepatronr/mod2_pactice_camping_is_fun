class Activity < ApplicationRecord
    has_many :sign_ups
    has_many :campers, through: :sign_ups
end
