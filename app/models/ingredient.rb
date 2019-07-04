class Ingredient < ApplicationRecord
    has_and_belongs_to_many :recipes, through: :ingredients_recipes
    has_and_belongs_to_many :users, through: :allergens

    validates :name, {presence: true, uniqueness: true}
end
