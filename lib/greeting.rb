class Greeting
  def initialize(hour)
    @hour = hour
  end

  def say
    return "Good Morning!" if morning?
    return "Good Afternoon!" if afternoon?
    return "Good Night!" if night?
  end

  def morning?
    @hour.between?(6, 11)
  end

  def afternoon?
    @hour.between?(12, 19)
  end

  def night?
    @hour.between?(20, 23) || @hour.between?(0, 5)
  end
end
