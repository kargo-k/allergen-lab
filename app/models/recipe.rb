class Recipe < ApplicationRecord
    has_one :user
    has_and_belongs_to_many :ingredients, through: :ingredients_recipes

    validates :name, {presence: true, uniqueness: true}
end
