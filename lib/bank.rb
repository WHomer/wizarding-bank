class Bank

  def initialize(bank)
    @bank = bank
  end

  def response
    "#{@bank} has been created."
  end

  def open_account(person)
    "An account has been opened for #{person.name} with #{@bank}."
  end

  def deposit(person, amount)
    person.money -= amount
    "#{amount} galleons have been deposited into #{person.name}'s #{@bank} account. Balance: #{} Cash: #{person.money}"
  end
end
