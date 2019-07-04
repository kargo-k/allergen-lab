class User < ApplicationRecord
    has_many :recipes
    has_and_belongs_to_many :ingredients, through: :allergens
    
    validates :name, {presence: true, uniqueness: true}
end
