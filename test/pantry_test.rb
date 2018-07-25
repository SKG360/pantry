require './lib/pantry'
require 'minitest/autorun'
require 'minitest/pride'

class PantryTest < Minitest::Test

  def test_if_it_exits
    pantry = Pantry.new
    assert_instance_of Pantry, pantry
  end

  def test_if_it_is_checking_and_stocking
    pantry = Pantry.new
    assert_equal ({}), pantry.stock
  end

  def test_if_it_is_checking_and_stocking
    skip
    pantry = Pantry.new
    pantry.stock_check("Cheese")

    assert_equal 0, pantry.stock_check
  end

  def test_if_it_is_restocking
    skip
    pantry = Pantry.new
    pantry.stock_check("Cheese")
    pantry.restock("Cheese", 10)

    assert_equal 10, pantry.restock
  end

  def test_if_it_is_restocking_to_thirty
    skip
    pantry = Pantry.new
    pantry.stock_check("Cheese")
    pantry.restock("Cheese", 10)
    pantry.restock("Cheese", 20)

    assert_equal 30, pantry.restock
  end

end
