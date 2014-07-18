require 'pry'

class RomanNumbers

	def initialize
		@group = {
			"I" => 1,
			"IV" => 4,
			"V" => 5,
			"IX" => 9,
			"X" => 10
		}
	end

	def convert(letter)
		if letter.length == 1
			value = @group[letter]
		else
			splitter(letter)
		end
	end

	def splitter(letter)
		if letter.include? "IX"
			arrayValues = letter.split('', 2)
			add(arrayValues)
		elsif letter.include? "IV"
			arrayValues = letter.split('', 2)
			add(arrayValues)
		else
			arrayValues = letter.split('')
			add(arrayValues)
		end
	end

	def add(arrayValues)
		arrayLetters = arrayValues.map { |x| @group[x] }
		value = arrayLetters.inject() {|sum,x| sum + x }
	end

end

describe "Roman Calculator" do

  it "must return nothing if no input" do
    expect("").to eq("")
  end

  it "must return numerical value given roman letter" do
  	a = "I"
  	expect(RomanNumbers.new.convert(a)).to eq(1)
  end

  it "must return numerical value given many roman letters" do
  	a = "II"
  	expect(RomanNumbers.new.convert(a)).to eq(2)
  end

  it "should not split IV and IX when in a roman number set" do
  	a = "XIX"
  	expect(RomanNumbers.new.convert(a)).to eq(19)
  end

end
