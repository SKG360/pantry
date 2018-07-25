require 'pry'

class Pantry
  attr_reader :stock, :stock_check

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient] = 0
    @stock[:ingredient]
  end

  def restock(ingredient, quantity)
    @stock[ingredient] =  quantity
    @stock[:ingredient] += @stock[:ingredient]
    # binding.pry

  end


end
