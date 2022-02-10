# frozen_string_literal: true

require './solver'
require 'yaml'

describe Solver do
  before :each do
    @solver = Solver.new
  end
  it 'solver is an instance of Solver class ' do
    @solver.should be_an_instance_of Solver
  end
  it 'factorial result is correct' do
    expect(@solver.factorial(4)).to eq(24)
  end

  it 'checks if factorial of 0 is 1' do
    expect(@solver.factorial(0)).to eq(1)
  end

  it 'excepts only positive int' do
    expect(@solver.factorial(-1)).to eq('StandardError')
  end

  it 'returns reverse word' do
    expect(@solver.reverse('hello')).to eq('olleh')
  end

  it 'RETURNS STRING' do
    expect(@solver.fizzbuzz(5)).to be_a_kind_of(String)
  end

  it 'if diviseble by 3 return fizz' do
    expect(@solver.fizzbuzz(6)).to eq('fizz')
  end
  it 'if diviseble by 5 return buzz' do
    expect(@solver.fizzbuzz(5)).to eq('buzz')
  end
  it 'if diviseble by 3 and 5 return fizzbuzz' do
    expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
  end
  it 'if any other number, return' do
    expect(@solver.fizzbuzz(7)).to eq('7')
  end
end
