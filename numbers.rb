class NumberManipulation

  def initialize(array_of_numbers)
    @numbers = array_of_numbers
  end

  def numbers=(array_of_numbers)
    @numbers = array_of_numbers
  end

  def numbers
    @numbers
  end

  def double_numbers
    placeholder_array = [ ]
    @numbers.each do |new_number|
      placeholder_array << new_number * 2
    end
    @numbers = placeholder_array
  end

end

new_array = NumberManipulation.new([4, 1, 3, 5, 7])
p new_array.double_numbers
p new_array.numbers