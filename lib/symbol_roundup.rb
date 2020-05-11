class Array
  def symbol_roundup
    select { |e| e.class == Symbol }
  end
end