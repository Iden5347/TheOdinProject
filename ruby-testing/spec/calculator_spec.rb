#spec/calculator_spec.rb
require './lib/calculator'

describe Calculator do

  describe "#add" do
    it "returns the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end
    it "returns the sum of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.add(2, 5, 7)).to eql(14)
    end
  end

  describe '#multiply' do
    it "returns the product of two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(3,4)).to eql(12)
    end
    it "returns the product of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.multiply(3,4,6)).to eql(72)
    end
  end

  describe 'subtract' do
    it "returns the difference between two numbers" do
      calculator = Calculator.new
      expect(calculator.subtract(10, 5)).to eql(5)
    end
  end

  describe 'divide' do
    it "returns the quotient of two numbers" do
      calculator = Calculator.new
      expect(calculator.divide(6,3)).to eql(2)
    end
  end
end