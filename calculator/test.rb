require 'minitest/autorun'

require './calculator'
class TestCalculator < MiniTest::Test
	# assert_equal
	def test_addition_numbers
		calculator = Calculator.new(10,10)
		assert_equal 20, calculator.addition(), "The addition is not correct"
	end
	def test_division_numbers
		calculator = Calculator.new(10,3)
		assert_instance_of Float, calculator.division()
	end
end