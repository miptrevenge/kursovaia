class Student < ApplicationRecord
    has_many :subjects

    validates :Login, presence: true
    validates :Password, presence: true
end
