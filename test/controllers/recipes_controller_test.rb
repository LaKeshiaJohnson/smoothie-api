require 'test_helper'

class RecipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe = recipes(:one)
  end

  test "should get index" do
    get recipes_url, as: :json
    assert_response :success
  end

  test "should create recipe" do
    assert_difference('Recipe.count') do
      post recipes_url, params: { recipe: { category_id: @recipe.category_id, description: @recipe.description, directions: @recipe.directions, ingredient1: @recipe.ingredient1, ingredient2: @recipe.ingredient2, ingredient3: @recipe.ingredient3, ingredient4: @recipe.ingredient4, ingredient5: @recipe.ingredient5, ingredient6: @recipe.ingredient6, ingredient7: @recipe.ingredient7, notes: @recipe.notes, photo: @recipe.photo, public: @recipe.public, rating: @recipe.rating, title: @recipe.title, user_id: @recipe.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show recipe" do
    get recipe_url(@recipe), as: :json
    assert_response :success
  end

  test "should update recipe" do
    patch recipe_url(@recipe), params: { recipe: { category_id: @recipe.category_id, description: @recipe.description, directions: @recipe.directions, ingredient1: @recipe.ingredient1, ingredient2: @recipe.ingredient2, ingredient3: @recipe.ingredient3, ingredient4: @recipe.ingredient4, ingredient5: @recipe.ingredient5, ingredient6: @recipe.ingredient6, ingredient7: @recipe.ingredient7, notes: @recipe.notes, photo: @recipe.photo, public: @recipe.public, rating: @recipe.rating, title: @recipe.title, user_id: @recipe.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy recipe" do
    assert_difference('Recipe.count', -1) do
      delete recipe_url(@recipe), as: :json
    end

    assert_response 204
  end
end
