require('rspec')
require('numbers_to_words')

describe("Number#numbers_to_words") do
  it("return the corresponding word for a single digit integer") do
    number = Number.new("1")
    expect(number.numbers_to_words()).to(eq("one"))
  end

  it("return the corrensponding words for a tens integer") do
    number = Number.new("20")
    expect(number.numbers_to_words).to(eq("twenty"))
  end

  it("return the corrensponding words for a teens integer") do
    number = Number.new("18")
    expect(number.numbers_to_words).to(eq("eighteen"))
  end

  it("return the corrensponding words for a two digit integer") do
    number = Number.new("88")
    expect(number.numbers_to_words).to(eq("eighty eight"))
  end

  it("return the corrensponding words for a three digit integer") do
    number = Number.new("666")
    expect(number.numbers_to_words).to(eq("six hundred sixty six"))
  end

  it("return the corrensponding words for a four digit integer") do
    number = Number.new("2421")
    expect(number.numbers_to_words).to(eq("two thousand four hundred twenty one"))
  end
end

# it("return the corrensponding words for a triple digit integer") do
#   expect(finalString("365")).to(eq("three hundred sixty five"))
# end

# it("return the corrensponding words for a quadruple digit integer") do
#   expect(finalString("5625")).to(eq("five thousand six hundred twenty five"))
# end