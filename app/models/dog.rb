class Dog < ApplicationRecord
  has_many :strolls
  has_many :sitter_dogs, through: :strolls
end
