require 'minitest/autorun'
require 'minitest/pride'
require './lib/person'
require 'pry'

class PersonTest < MiniTest::Test
  def test_does_it_exist
    person1 = Person.new("Minerva", 1000)

    assert_instance_of Person, person1
  end

  def test_instance_created_with_response
    person1 = Person.new("Minerva", 1000)
    test_1 = "Minerva has been created with 1000 galleons in cash."
    assert_equal test_1, person1.response

    person2 = Person.new("Luna", 500)
    test_2 = "Luna has been created with 500 galleons in cash."
    assert_equal  test_2, person2.response
  end

end
