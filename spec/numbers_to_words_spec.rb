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
end
