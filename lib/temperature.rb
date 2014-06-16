# Temperature is comfortable when it's room temperature.
# Figure out what the range for room temperature is based on
# the spec. Additionally, try to use ranges or a case statement.

# The Temperature class should accept the current temperature
# and respond_to a status method.

class Temperature
  attr_reader :temp

  def initialize(temp)
    @temp = temp
  end

  def status
    if temp.between?(18, 21)
      "comfortable"
    elsif temp <= 14
      "cold"
    elsif temp >= 22
      "hot"
    end
  end
end