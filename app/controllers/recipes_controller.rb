class RecipesController < ApplicationController

    def index
        @recipes = Recipe.all
    end

    def search
        @recipe = Recipe.where("name like ?", "%"+params[:q]+"%")[0]
        render :show
    end

    def sort
        @recipes = Recipe.all
        @recipes = @recipes.sort_by{|recipe| -recipe.ingredients.count}
        render :index
    end

    def new
        @recipe = Recipe.new
    end

    private 

        def set_show
            @recipe = Recipe.find(params[:id])
        end
end
