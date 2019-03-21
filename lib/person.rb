class Person
  attr_reader :name,
              :money

  def initialize(name, money)
    @name = name
    @money = money
  end

  def response
    "#{@name} has been created with #{@money} galleons in cash."
  end

end
