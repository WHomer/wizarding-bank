require 'minitest/autorun'
require 'minitest/pride'
require './lib/bank'

class BankTest < MiniTest::Test
  def test_does_it_exist
    chase = Bank.new("JP Morgan Chase")

    assert_instance_of Bank, chase
  end

  def test_bank_response
    chase = Bank.new("JP Morgan Chase")
    wells_fargo = Bank.new("Wells Fargo")

    assert_equal "JP Morgan Chase has been created.", chase.response
    assert_equal "Wells Fargo has been created.", wells_fargo.response

  end
end
