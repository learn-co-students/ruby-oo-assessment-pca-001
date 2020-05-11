class Array
  def odds?
    array = []
    select { |i| i.odd? ? array << true : array << false }
    array
  end
end
