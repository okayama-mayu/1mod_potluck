class Potluck
  attr_reader :date
  attr_accessor :dishes

  def initialize(date)
    @date = date
    @dishes = []
  end

  def add_dish(dish)
    dishes << dish
  end

  def get_all_from_category(category_name)
    dishes_in_cat = []
    dishes.each do |dish|
      if dish.category == category_name
        dishes_in_cat << dish
      end
    end
    dishes_in_cat
  end
end
