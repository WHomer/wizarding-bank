require 'minitest/autorun'
require 'minitest/pride'
require './lib/bank'
require './lib/person'

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

  def test_a_bank_account_has_been_opened
    chase = Bank.new("JP Morgan Chase")
    person1 = Person.new("Minerva", 500)

    expected = "An account has been opened for Minerva with JP Morgan Chase."
    actual = chase.open_account(person1)

    assert_equal expected, actual
  end
  
end
__END__
chase.deposit(person1, 750)

750 galleons have been deposited into Minerva's Chase account. Balance: 750 Cash: 250
