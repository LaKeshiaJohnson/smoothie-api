class RecipesController < ApplicationController
  before_action :set_recipe, only: [:show, :update, :destroy]

  # GET /recipes
  def index
    @recipes = Recipe.all

    render json: @recipes
  end

  def myrecipes
    @recipes = @current_user.recipes
    #@recipes = Recipe.where(“user_id = @current_user”)
    
    render json: @recipes
  end

=begin def recipename
   @recipes = Favorites.where("recipe_id = #{params[:id]}")
      render json: @recipes

  end
=end
  def editrecipe
    if @recipe.update(recipe_params)
      render json: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end

  end
  # GET /recipes/1
  def show
    render json: @recipe
  end

  # POST /recipes
  def create
    @recipe = Recipe.new(recipe_params)

    if @recipe.save
      render json: @recipe, status: :created, location: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipes/1
  def update
    if @recipe.update(recipe_params)
      render json: @recipe
    else
      render json: @recipe.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipes/1
  def destroy
    @recipe.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe
      @recipe = Recipe.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_params
      params.require(:recipe).permit(:title, :description, :ingredient1, :ingredient2, :ingredient3, :ingredient4, :ingredient5, :ingredient6, :ingredient7, :directions, :notes, :photo, :public, :rating, :user_id, :category_id)
    end
end
