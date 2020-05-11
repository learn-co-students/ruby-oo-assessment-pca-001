# Define a class Person that accepts the age of a person as an
# initialization argument.

# Write a method called is_a_teenager that takes a person's age and
# returns true/false depending on whether the age indicates that the
# person is a teenager

class Person
  attr_reader :age

  def initialize(age)
    @age = age
  end

  def is_a_teenager?
    (13..19).cover? @age
  end
end
