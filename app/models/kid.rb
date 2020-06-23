class Kid < ApplicationRecord
    validates :username, length: {minimum: 7, maximum: 25},
                        uniqueness: true,
                        presence: true
    validates :age, numericality: {greater_than_or_equal_to: 6, less_than_or_equal_to: 15},
                    presence: true
end
