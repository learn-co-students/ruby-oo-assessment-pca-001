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
    case @temp
    when (0...15)
      "cold"
    when (15...22)
      "comfortable"
    when (22..100)
      "hot"
    else
      "dead"
    end
  end
end
