require 'simple_math'

describe '#prompt' do
  it 'prompts for two numbers' do
    simple_math = SimpleMath.new
    allow(simple_math).to receive(:gets).and_return(10, 5)
    expect(simple_math.prompt).to eq([10, 5])
  end
end

describe '#add' do
  it 'returns the sum of two numbers' do
    simple_math = SimpleMath.new
    expect(simple_math.add(10, 5)).to eq(15)
  end
end

describe '#subtract' do
  it 'subtracts the second number from the first' do
    simple_math = SimpleMath.new
    expect(simple_math.subtract(10, 5)).to eq(5)
  end
end

describe '#multiply' do
  it 'multiplies the first number by the second' do
    simple_math = SimpleMath.new
    expect(simple_math.multiply(10, 5)).to eq(50)
  end
end

describe '#divide' do
  it 'divides the first number by the second' do
    simple_math = SimpleMath.new
    expect(simple_math.divide(10, 5)).to eq(2)
  end
end

describe '#output' do
  it 'returns the calculations of the numbers provided' do
    simple_math = SimpleMath.new
    allow(simple_math).to receive(:gets).and_return(10, 5)
    expect(simple_math.output).to eq("10 + 5 = 15\n10 - 5 = 5\n10 * 5 = 50\n10 / 5 = 2")
  end
end
