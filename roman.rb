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