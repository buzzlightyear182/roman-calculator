
b = "V";

class RomanNumbers

	def initialize
		@group = {
			"I" => 1,
			"II" => 2,
			"III" => 3,
			"IV" => 4,
			"V" => 5
		}
	end

	def convert(letter1)
		value = @group[letter1]
	end

	def add(letter1, letter2)
		value = @group[letter1] + @group[letter2]
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

  it "must return numerical value given roman letter" do
  	a = "I"
  	b = "V"
  	expect(RomanNumbers.new.add(a, b)).to eq(6)
  end

end
