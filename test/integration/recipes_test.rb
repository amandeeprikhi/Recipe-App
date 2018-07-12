require 'test_helper'

class RecipesTest < ActionDispatch::IntegrationTest

  def setup
    @user = Chef.create!(chefname: "AMAN", email: "aman@exmaple.com")
    @recipe = Recipe.create(name: "Vegetable Saute", description: "Great vegetable Saute, add vegetables and oil", chef: @chef)
    @recipe2 = Recipe.create(name: "Chicken Saute", description: "Great chicken dish", chef: @chef)
  end

  # test "should get recipes index" do
  #   get recipes_path
  #   assert_response :success
  # end
  #
  # test "should get recipes listing" do
  #   get recipes_path
  #   assert_template 'recipes/index'
  #   assert_match @recipe.name, response.body
  #   assert_match @recipe2.name, response.body
  # end

  test "should get recipes show" do
    get recipe_path(@recipe)
    assert_template 'recipes/show'
    assert_match @recipe.name, response.body
    assert_match @recipe.description, response.body
    assert_match @chef.chefname, response.body
  end

end
