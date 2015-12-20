class Exercise

  # Some clarifications:
  # Outside of an interview situation, I would use the Ruby flatten method
  # I'm assuming that I should return an empty array if the input is not an array
  def flatten(array_of_nested_arrays)
    flat_array = []
    return flat_array unless array_of_nested_arrays.is_a?(Array)
    array_of_nested_arrays.each do |item|
      flat_array.concat(flatten(item)) and next if item.is_a?(Array)
      flat_array << item
    end
    flat_array
  end
end