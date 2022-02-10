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

  it "checks if factorial of 0 is 1" do
    expect(@solver.factorial(0)).to eq(1)
  end 

  it 'excepts only positive int' do
    expect(@solver.factorial(-1)).to raise_error(StandardError) 
  end

  it "returns reverse word" do
    expect(@solver.reverse("hello")).to eq('olleh')
  end
end