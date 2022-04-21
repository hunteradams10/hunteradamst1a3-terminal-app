# frozen_string_literal: true 

require_relative '../classes'

# HP Calculator test for adding and subtracting HP, two cases (adding, subtracting)

describe Calculator do
  it 'should subtract' do
    expect(Calculator.subtract(5, 3)).to eq(5 - 3)
  end

  it 'should add' do
    expect(Calculator.add(3, 7)).to eq(3 + 7)
  end
end
