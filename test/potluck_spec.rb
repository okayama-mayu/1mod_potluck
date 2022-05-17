require './lib/dish'
require './lib/potluck'
require 'pry'

RSpec.describe Potluck do
  before(:each) do
    @potluck = Potluck.new("7-13-18")
  end

  it "creates an instance of Potluck" do
    expect(@potluck).to be_instance_of(Potluck)
  end

  it "has a date" do
    expect(@potluck.date).to eq("7-13-18")
  end

  it "has no dishes by default" do
    expect(@potluck.dishes).to eq([])
  end

  it "can create Dishes" do
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)

    expect(couscous_salad).to be_instance_of(Dish)
    expect(cocktail_meatballs).to be_instance_of(Dish)
  end

  it "can add Dishes" do
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    @potluck.add_dish(couscous_salad)
    @potluck.add_dish(cocktail_meatballs)

    expect(@potluck.dishes.count).to equal(2)
    expect(@potluck.dishes[0]).to eq(couscous_salad)
    expect(@potluck.dishes[1]).to eq(cocktail_meatballs)
  end

  it "can count Dishes" do
    couscous_salad = Dish.new("Couscous Salad", :appetizer)
    cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    @potluck.add_dish(couscous_salad)
    @potluck.add_dish(cocktail_meatballs)

    expect(@potluck.dishes.length).to equal(2)
  end
end
