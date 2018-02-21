class Bb < ApplicationRecord
    validates :name, presence: true, length: { maximum: 20 }
    validates :comment, presence: true, length: { maximum: 140 }
end
