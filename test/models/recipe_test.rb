require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
    def setup
        @recipe = Recipe.new(name: "vegetable", description: "Great vegetable recipe")
    end

    test "recipe should be valid" do
       assert @recipe.valid? 
    end

    # test "name should be present" do
    #    @recicpe.name = "a"
    #    assert_not @recipe.valid? 
    # end

    # test "description shouldn't be less than 5 characteers" do
    #     @recipe.desctiption = "A" * 3
    #     assert_not @recipe.valid?
    # end

    # test "description shouldn't be more than 500 characteers" do
    #     @recipe.description = "A" * 501
    #     assert_not @recipe.valid?
    # end
end