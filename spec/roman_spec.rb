require 'pry'
require '../roman.rb'

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
