require 'minitest/autorun'
require './calculator'

class TestCalculator < MiniTest::Test

	def setup
		@calculator = Calculator.new(5,2)
	end
	# assert_equal
	def test_addition_numbers
		assert_equal 7, @calculator.addition(), "The addition is not correct"
	end

	def test_division_returns_both_numbers
		assert_equal 2.5, @calculator.division()
	end

	# assert_instance_of
	def test_division_numbers
		assert_instance_of Float, @calculator.division()
	end

	# assert_raises
	def test_division_returns_zero
		assert_raises ZeroDivisionError do
			@calculator.y = 0
			@calculator.division()
		end
	end

	def test_calculator_responds_to_multiplication
		assert_respond_to @calculator, "multiplication"
	end

	# skip test
	def test_calculator_future
		skip "It doesn't work"
	end
end