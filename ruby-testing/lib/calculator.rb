class Calculator
  def add(*addends)
		addends.inject(0){|sum, addend| sum + addend.to_i}
	end

  def subtract(a,b)
    a - b
  end
  
  def multiply(*factors)
    factors.inject(1){|product, factor| product * factor}
  end

  def divide(a, b)
    a / b
  end
end