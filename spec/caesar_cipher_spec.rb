require "spec_helper"
require_relative "../lib/caesar_cipher"

RSpec.describe "Caesar Cipher" do  
  it "easy test" do 
    expect(caesar_cipher("a", 1)).to eq("b")
    expect(caesar_cipher("z", 1)).to eq("a")
  end
  
  it "easy test capitalized" do 
    expect(caesar_cipher("A", 1)).to eq("B")
    expect(caesar_cipher("Z", 1)).to eq("A")
  end

  it "passes a baseline test" do 
    expect(caesar_cipher("What a string!", 5)).to eq("Bmfy f xywnsl!")
  end

    it "keeps non-letters unchanged" do
    expect(caesar_cipher("Zebra-493?", 3)).to eq("Cheud-493?")
  end

  it "preserves case" do
    expect(caesar_cipher("xyz XYZ", 2)).to eq("zab ZAB")
  end

  it "wraps around z/Z correctly" do
    expect(caesar_cipher("Wrap from z and Z.", 1)).to eq("Xsbq gspn a boe A.")
  end

  it "does nothing with a 26 shift" do
    expect(caesar_cipher("abc ABC", 26)).to eq("abc ABC")
  end

end
