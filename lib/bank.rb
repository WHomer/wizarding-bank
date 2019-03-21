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
end
