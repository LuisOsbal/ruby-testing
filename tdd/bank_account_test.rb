require "minitest/autorun"
require "./bank_account"

class TestBankAccount < MiniTest::Test
	def setup
		@account = BankAccount.new
	end

	def test_bank_account_is_not_nil
		refute_nil @account
	end
end