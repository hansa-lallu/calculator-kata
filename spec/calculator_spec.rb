# frozen_string_literal: true

require 'calculator'

describe Calculator do
  it 'adds numbers when given an addition operator within the string' do
    calculator = Calculator.new
    expect(calculator.evaluate('4 + 5')).to eq(9)
    expect(calculator.evaluate('5 + 8')).to eq(13)
  end

  it 'multiplies number when given a multipy operator within the string' do
    calculator = Calculator.new
    expect(calculator.evaluate('4 * 5')).to eq(20)
  end
end
