require "rspec/autorun"

class Calculator

  def add(firstnumber, secondnumber)
    return firstnumber + secondnumber
  end

  def factorial(n)
    if n < 1
      1
    else
   # n * factorial(n-1)
    #recursive, cool! Though they have a certain solution
    #because with large numbers it would fail.
    #ruby would create a new stackframe to store the data
  #end
      (1..n).reduce(:*)
    end
  end
  
end

describe Calculator  do 
  describe "#add" do
    it "returns the sum of its two arguments" do
      calc = Calculator.new

      expect(calc.add(5,10)).to eq(15)
    end

    it "returns the sum of two different arguments" do

        calc = Calculator.new

        expect(calc.add(1,2)).to eq(3)
    end
  end 

  describe "#factorial" do
    it "returns 1 when given 0" do
      calc = Calculator.new

      expect(calc.factorial(0)).to eq(1)
    end

    it "returns 120 when given 5" do
      calc = Calculator.new

      expect(calc.factorial(5)).to eq(120)
    end
  end 
end

#Factorial: Take an integer, and multiply it by all 
#the integers less than it. 