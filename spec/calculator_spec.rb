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

  it 'subtracts number when given a subtraction operator within the string' do
    calculator = Calculator.new
    expect(calculator.evaluate('4 - 5')).to eq(-1)
  end

  it 'divides number when given a divider operator within the string' do
    calculator = Calculator.new
    expect(calculator.evaluate('4 / 5')).to eq(0.8)
  end

  it 'follows mathematics principle and orders correctly' do
    calculator = Calculator.new
    expect(calculator.evaluate('4 + 5 * 6')).to eq(34)
    expect(calculator.evaluate('2 / 2 + 3 * 4 - 6')).to eq(7)
  end
end
