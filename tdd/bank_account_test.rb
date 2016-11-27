require "minitest/autorun"
require "./bank_account"

class TestBankAccount < MiniTest::Test
	def setup
		@account = BankAccount.new(200)
	end

	def test_bank_account_is_not_nil
		refute_nil @account
	end

	def test_account_has_a_withdraw_method
		assert @account.respond_to?(:withdraw)
	end

	def test_withdraw_removes_money_from_account
		@account.withdraw(100)
		assert_equal 100, @account.amount
	end

	def test_cant_withdraw_more_money_that_it_has
		assert_raises ArgumentError do
			@account.withdraw(300)
		end
	end

	def test_initial_value_for_bank_account
		assert_equal @account.amount, 200
	end
end