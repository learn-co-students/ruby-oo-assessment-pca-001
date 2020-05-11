# Define a class Greeting with 4 methods
# say, morning?, afternoon?, night?

# When creating a Greeting, it should accept an argument of the hour
# of the day (in military time).

# The say method should give the appropriate greeting for the time
# of day using the morning?, afternoon?, night? methods.

# morning: 06 - 11: Good Morning!
# afternoon: 12 - 19: Good Afternoon!
# night: 20 - 05: Good night

class Greeting
  attr_reader :time
  def initialize(time)
    @time = time
  end

  def check
    if @time < 12
      "Morning"
    elsif @time > 11 && @time < 20
      "Afternoon"
    else
      "Night"
    end
  end

  def say
    "Good #{check}!"
  end

  def morning?
    check == "Morning"
  end

  def afternoon?
    check == "Afternoon"
  end

  def night?
    check == "Night"
  end

end
