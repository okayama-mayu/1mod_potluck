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
end
