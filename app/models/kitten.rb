class Kitten < ApplicationRecord
  validates :name, presence: true, length: { minimum: 2, maximum: 30 }
  validates :age, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 40 }
  validates :cuteness, presence: true, inclusion: { in: ["low", "medium", "high"] }
  validates :softness, presence: true, inclusion: { in: ["low", "medium", "high"] }
end
