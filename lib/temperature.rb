# Temperature is comfortable when it's room temperature.
# Figure out what the range for room temperature is based on
# the spec. Additionally, try to use ranges or a case statement.

# The Temperature class should accept the current temperature
# and respond_to a status method.

class Temperature
  def initialize(temp)
    @temp = temp
  end

  def status
    return "comfortable" if @temp.between?(15, 21)
    return "hot" if @temp > 21
    return "cold" if @temp < 15
  end
end
