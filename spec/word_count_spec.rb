require('rspec')
require('word_count')

describe('String#word_count') do
  it "returns 0 for sentences without any specific word to search for" do
    expect("cow eat grass".count("")).to(eq(0))
  end

  it "takes a sentence and splits it into an array" do
    expect("cow eat grass".split).to(eq(["cow", "eat", "grass"]))
  end
end
