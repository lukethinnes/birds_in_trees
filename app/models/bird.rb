class Bird < ApplicationRecord
    has_many :branches
    has_many :trees, through: :branches
end
