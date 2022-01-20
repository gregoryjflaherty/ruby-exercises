require "../lib/simple_math"

RSpec.describe SimpleMath do

  it 'can add two numbers' do
    sm = SimpleMath.new

    result = sm.add(2,2)
    expected = 4

    expect(result).to eq(expected)
  end

  it 'can add two different numbers' do
    sm = SimpleMath.new

    result = sm.add(5,3)
    expected = 8

    expect(result).to eq(expected)
  end

  it 'can subtract two numbers' do
    sm = SimpleMath.new

    result = sm.subtract(10,2)
    expected = 8

    expect(result).to eq(expected)
  end

  it 'can subtract two other numbers' do
    sm = SimpleMath.new

    result = sm.subtract(50,27)
    expected = 23

    expect(result).to eq(expected)
  end

  it 'can multiply two numbers' do
    calculator = SimpleMath.new
    expected = calculator.multiply(8, 9)

    expect(expected).to be(72)
  end

  it 'can multiply two other numbers' do
    calculator = SimpleMath.new
    # instantiate the class
    expected = calculator.multiply(5, 5)
    # call the method being tested
    # determine your expected result
    expect(expected).to be(25)
    # check results
  end

  it 'can divide two numbers' do
    math_man = SimpleMath.new
    math_man.divide(100, 5)

    expect(math_man.divide(100,5)).to be(20)
  end

  it 'can divide two other numbers' do
    math_man = SimpleMath.new
    expect(math_man.divide(300, 50)).to be(6)
  end
end
