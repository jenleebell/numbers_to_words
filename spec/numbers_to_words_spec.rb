require("rspec")
require("numbers_to_words")

describe("Fixnum#numbers_to_words") do

  # 1 handles 1 digit numbers
  it("handles single digit numbers") do
    expect((1).numbers_to_words()).to(eq("one"))
  end

  it("handles double digit numbers") do
    expect((25).numbers_to_words()).to(eq("twenty five"))
  end

  it("handles triple digit numbers") do
    expect((325).numbers_to_words()).to(eq("three hundred twenty five"))
  end

  it("handles quadruple digit numbers") do
    expect((1325).numbers_to_words()).to(eq("one thousand three hundred twenty five"))
  end

  it("handles numbers up to the millions") do
    expect((2221325).numbers_to_words()).to(eq("two million two hundred twenty one thousand three hundred twenty five"))
  end

  it("handles digit numbers up to the billions") do
    expect((1325).numbers_to_words()).to(eq("one thousand three hundred twenty five"))
  end

  it("handles digit numbers up to the trillions") do
    expect(123456789002.numbers_to_words()).to(eq("one hundred twenty three billion four hundred fifty six million seven hundred eighty nine thousand two"))
  end
end
