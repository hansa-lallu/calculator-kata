# frozen_string_literal: true

class Calculator
  def evaluate(string)
    array = string.split(' ').select.with_index { |_num, idx| idx.even? }.map(&:to_i)
    array = array.inject(:+)
  end
end
