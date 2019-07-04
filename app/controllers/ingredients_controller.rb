class IngredientsController < ApplicationController

    def index
        @ingredients = Ingredient.all
        @ingredients = @ingredients.sort_by{|ingr| -ingr.users.count}
    end

end
