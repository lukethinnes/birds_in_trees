class Tree < ApplicationRecord
    has_many :branches
    has_many :birds, through: :branches
end
